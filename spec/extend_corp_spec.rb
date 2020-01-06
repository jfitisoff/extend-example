require 'rspec'
require_relative 'spec_helper'

describe "Extend Corporate Site" do
  before(:all) { @s = ExtendSite.new.open }
  let(:site) { @s }

  context 'Home Page' do
    it "loads the home page" do
      expect(site.home_page).to be_instance_of(HomePage)
      expect(site.start_selling_warranties).to be_present
    end
  end

  context 'Blog Page' do
    it "fails to subscribe without an email address" do
      site.blog_page
      expect(site.text).to include('Enter email address')
      site.subscribe.click
      expect(site.text).to include('Enter a valid email address')
    end
  end

  context 'Contact Us Page' do
    it "populates the contact form" do
      # Doesn't actually submit the form, just confirms that it can
      # populate it.
      expect { site.contact_us_page.update_page(
          full_name: 'fname lname',
          email_address: 'test@example.com',
          website_url: 'test@example.com',
          phone_number: '5105551212',
          message: 'hi'
        )
      }.to_not raise_error
    end
  end

  context 'Careers Page' do
    it "does a simple page check" do
      expect(site.careers_page.career_opportunities).to be_present
    end
  end

  context 'Login Page' do
    it "logs in with bad information" do
      site.login_page.login(
        shopify_store_address: 'foo',
        remember_me: true # Custom component. See checkbox_wrapper.rb.
      )
      expect(site.text).to match(/incorrect store address/)
    end
  end

  context 'File a Claim Page' do
    it "does a simple page check" do
      site.file_a_claim_page
      expect(site.text).to match(/I am your virtual/)
    end
  end

  context 'Connect Store Page' do
    it "does a simple page check" do
      expect(site.connect_store_page.shopify).to be_present
    end
  end

  context 'Unsupported Platform Page' do
    it "displays the unsupported platform page for unsupported carts" do
      site.connect_store_page.volusion.click
      expect(site.unsupported_platform_page?)
    end

    it "selects a known platform when filling out shopping cart form" do
      site.connect_store_page.volusion.click
      expect(site.unsupported_platform_page?)

      # Doesn't actually submit the form, just confirms that it can
      # populate it. The site's update_page method can be used to set
      # multiple page element values.
      expect { site.update_page(
          full_name: 'fname lname',
          email_address: 'test@example.com',
          store_url: 'test@example.com',
          ecommerce_platform: 'Volusion', # Custom component. See select_wrapper.rb.
          annual_sales: '$2,000,000'
        )
      }.to_not raise_error
    end

    it "selects a 'custom' platform when filling out shopping cart form" do
      site.connect_store_page.volusion.click
      expect(site.unsupported_platform_page?)

      # Doesn't actually submit the form, just confirms that it can
      # populate it. The site's update_page method can be used to set
      # multiple page element values.
      expect { site.update_page(
          full_name: 'fname lname',
          email_address: 'test@example.com',
          store_url: 'test@example.com',
          ecommerce_platform: 'Custom', # Custom component. See select_wrapper.rb.
          phone_number: '5551212',
          message: 'testing'
        )
      }.to_not raise_error
    end
  end
end

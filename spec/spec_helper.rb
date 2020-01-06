require 'insite'
require_relative 'support/extend_site'

# class ExtendSite
#   include Insite
#
#   def initialize
#     super("https://extend.com/")
#   end
# end
#
# class FaqPage < ExtendSite::Page
#   set_url '/faq/'
#
#   section :about_extend, "//section[contains(string(), 'About Extend')]"
# end
#
# class BlogPage < ExtendSite::Page
#   set_url '/blog/'
#
#   text_field :email_address, type: 'email'
#   button :subscribe, type: 'submit'
#   section :all_topics, xpath: "//section[contains(string(), 'All topics')]"
# end
#
# class CareersPage < ExtendSite::Page
#   set_url '/careers/'
#
#   button  :view_open_positions, text: 'View Open Positions'
#   section :join_us, xpath: "//section[contains(string(), 'Join Us')]"
#   section :our_benefits_and_perks, xpath: "//section[contains(string(), 'Our Benefits')]"
#   section :career_opportunities, xpath: "//section[contains(string(), 'Career Opp')]"
# end
#
# class ConnectStorePage < ExtendSite::Page
#   set_url 'https://merchants.extend.com/onboarding/platform/'
#
#   div :shopify, text: 'Shopify'
#   div :magento, text: 'Magento'
#   div :big_commerce, text: 'BigCommerce'
#   div :woo_commerce, text: 'WooCommerce'
#   div :volusion, text: 'Volusion'
#   div :salesforce_commerce_cloud, text: 'Salesforce Commerce Cloud'
#   div :i_have_a_custom_solution, text: 'I have a custom solution'
#   div :other, text: 'Other'
# end
#
# class ContactUsPage < ExtendSite::Page
#   set_url '/contact/'
#
#   text_field :full_name, name: 'full name'
#   text_field :email_address, name: 'email'
#   text_field :website_url, name: 'website'
#   text_field :phone_number, name: 'phone'
#   textarea :message, id: 'contactMessage'
# end
#
# class FileAClaimPage < ExtendSite::Page
#   set_url 'https://customers.extend.com/claim/'
# end
#
# class HomePage < ExtendSite::Page
#   a :start_selling_warranties, text: 'Start Selling Warranties'
# end
#
# class LoginPage < ExtendSite::Page
#   set_url 'https://merchants.extend.com/login'
#
#   text_field :shopify_store_address, id: 'shopifyAddress'
#   span :remember_me, class: /(-Checked|-Unchecked)/i do
#     def clear
#       click if set?
#     end
#
#     def set
#       click unless set?
#     end
#
#     def set?
#       attribute_value('class') =~  /-Checked/i
#     end
#   end
#   button :continue, type: 'submit'
#
#   def login(**kwargs)
#     update_page(**kwargs)
#     continue.click
#   end
# end
#
# class UnsupportedPlatformPage < ExtendSite::Page
#   set_url "https://merchants.extend.com/onboarding/platform/unsupported"
# end

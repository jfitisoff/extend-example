class LoginPage < ExtendSite::Page
  set_url 'https://merchants.extend.com/login'

  text_field :shopify_store_address, id: 'shopifyAddress'
  checkbox_wrapper :remember_me
  button :continue, type: 'submit'

  def login(**kwargs)
    update_page(**kwargs)
    continue.click
  end
end

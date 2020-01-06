class UnsupportedPlatformPage < ExtendSite::Page
  set_url "https://merchants.extend.com/onboarding/platform/unsupported"

  text_field :full_name, id: 'fullName'
  text_field :email_address, id: 'email'
  text_field :store_url, id: 'storeUrl'
  select_wrapper :ecommerce_platform, index: 0
  text_field :annual_sales, id: 'annualSales'
  text_field :phone_number, id: 'phoneNumber'
  textarea :message, id: 'message'
end

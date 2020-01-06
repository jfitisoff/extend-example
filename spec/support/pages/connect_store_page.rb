# https://github.com/jfitisoff/insite/wiki/Defining-Page-Objects
class ConnectStorePage < ExtendSite::Page
  set_url 'https://merchants.extend.com/onboarding/platform/'

  a :shopify, text: /Shopify/
  a :magento, text: /Magento/
  a :big_commerce, text: /BigCommerce/
  a :woo_commerce, text: /WooCommerce/
  a :volusion, text: /Volusion/
  a :salesforce_commerce_cloud, text: /Salesforce Commerce Cloud/
  a :i_have_a_custom_solution, text: /I have a custom solution/i
  a :other, text: /Other/
end

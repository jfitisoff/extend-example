# https://github.com/jfitisoff/insite/wiki/Defining-Page-Objects
class ContactUsPage < ExtendSite::Page
  set_url '/contact/'

  text_field :full_name, name: 'full name'
  text_field :email_address, name: 'email'
  text_field :website_url, name: 'website'
  text_field :phone_number, name: 'phone'
  textarea :message, id: 'contactMessage'
end

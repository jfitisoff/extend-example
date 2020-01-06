# https://github.com/jfitisoff/insite/wiki/Defining-Page-Objects
class BlogPage < ExtendSite::Page
  set_url '/blog/'

  text_field :email_address, type: 'email'
  button :subscribe, type: 'submit'
  section :all_topics, xpath: "//section[contains(string(), 'All topics')]"
end

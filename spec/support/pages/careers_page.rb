# https://github.com/jfitisoff/insite/wiki/Defining-Page-Objects
class CareersPage < ExtendSite::Page
  set_url '/careers/'

  button  :view_open_positions, text: 'View Open Positions'
  section :join_us, xpath: "//section[contains(string(), 'Join Us')]"
  section :our_benefits_and_perks, xpath: "//section[contains(string(), 'Our Benefits')]"
  section :career_opportunities, xpath: "//section[contains(string(), 'Career Opp')]"
end

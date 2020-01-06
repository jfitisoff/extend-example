require 'insite'

# https://github.com/jfitisoff/insite/wiki/Defining-a-Site
class ExtendSite
  include Insite

  def initialize
    super("https://extend.com/")
  end
end

Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

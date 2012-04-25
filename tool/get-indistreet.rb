# written by Weeyoung in Windows 7
# indie bot...
# indiebot id : IndieNews_bot

require "open-uri"
require "nokogiri"

puts 'Indistreet parser v0.1'

url = "http://indistreet.com/stage?page=1"
doc = Nokogiri::HTML(doc = open(url))
doc.css('div.entryStage').each do  | stage |
  puts stage.content
end
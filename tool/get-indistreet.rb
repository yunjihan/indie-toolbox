# written by Weeyoung in Windows 7
# indie bot...
# indiebot id : IndieNews_bot

require "open-uri"
require "nokogiri"

puts 'Indistreet parser v0.1'

url = "http://indistreet.com/stage?page=1"
doc = Nokogiri::HTML(doc = open(url), 'UTF-8')

doc.css('img.stageThumb').each do  | stage |
	puts stage['src']
end

doc.css('a.title//h4').each do  | stage |
	puts stage.content 
end

doc.css('a.stagePlaces').each do  | stage |
	puts stage.content 
end

doc.css('p.stageDateTime//em.time').each do  | stage |
	puts stage.content 
end

doc.css('ul.stageMusicians').each do  | stage |
	puts stage.content 
end
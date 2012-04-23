#!/home/jihan/.rvm/bin/ruby
# vi:set fileencoding=utf-8 :
# indie bot...
# indiebot id : IndieNews_bot

require 'rubygems'
require 'open-uri'
require 'json'

puts "Indie html-parser v0.1"


# Perform a google search
uri_json = URI.parse('http://muzever.com/api/events/get_by_date/?option=from_now&date=2012-04-23&page=1')

# JSON.parse(my_json).to_xml(:root => :my_root)
# json_obj = JSON doc_json

doc_json = JSON.parse(uri_json.read)

index=1
doc_json.each do | x |
	puts "#{index}. x.class: #{x.class}"
	puts "x.inspect : #{x.inspect}"
	index+=1
end

# puts json_obj

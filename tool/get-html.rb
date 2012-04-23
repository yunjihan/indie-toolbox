#!/home/jihan/.rvm/bin/ruby
# vi:set fileencoding=utf-8 :
# indie bot...
# indiebot id : IndieNews_bot

require 'rubygems'
require 'open-uri'
# require 'nokogiri'
require 'active_support'
require 'json'
require 'net/http'

puts "Indie html-parser v0.1"


# Perform a google search
uri_json = URI.parse('http://muzever.com/api/events/get_by_date/?option=from_now&date=2012-04-23&page=1')

# JSON.parse(my_json).to_xml(:root => :my_root)

doc_json = JSON.parse(uri_json.read)

puts doc_json

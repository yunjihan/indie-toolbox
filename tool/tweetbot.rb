#!/home/jihan/.rvm/bin/ruby
# vi:set fileencoding=utf-8 :
# indie bot...
# indiebot id : IndieNews_bot

#require 'open-uri'
require 'rubygems'
#require 'nokogiri'
require 'twitter'

$indie_bot_name = "IndieNews_bot"

puts "Tweetbot collector v0.1"

Twitter.configure do |config|
  config.consumer_key = 'YuI89f43YzNR85uZvl6qyw'
  config.consumer_secret = 'wWkWLghITcEDaah9YsM6xFuAdXrk7OY8X1ztAvgaKIc'
  config.oauth_token = '104524073-NWFQMPHWu4KyIVwswdx7mKDmVWattxGB7Ie5M1un'
  config.oauth_token_secret = 'NdI9T7E4eJOyX3F0Lu5vuw6OcR0TFtCjAlYje4ebEuE'
end

@buffer = Twitter.user_timeline($indie_bot_name, { :count=>100 } )

@buffer.each do | status |
	puts "\033[93m#{status.user}\033[0m : #{status.text}"
end

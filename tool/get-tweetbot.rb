#!/home/jihan/.rvm/bin/ruby
# vi:set fileencoding=utf-8 :
# indie bot...

#require 'open-uri'
require 'rubygems'
#require 'nokogiri'
require 'tweetstream'

puts "Tweetbot collector v0.1"
puts TweetStream::VERSION

TweetStream.configure do |config|
  config.consumer_key = 'YuI89f43YzNR85uZvl6qyw'
  config.consumer_secret = 'wWkWLghITcEDaah9YsM6xFuAdXrk7OY8X1ztAvgaKIc'
  config.oauth_token = '104524073-NWFQMPHWu4KyIVwswdx7mKDmVWattxGB7Ie5M1un'
  config.oauth_token_secret = 'NdI9T7E4eJOyX3F0Lu5vuw6OcR0TFtCjAlYje4ebEuE'
  config.auth_method = :oauth
  config.parser   = :yajl
end

#!/home/jihan/.rvm/bin/ruby
# vi:set fileencoding=utf-8 :
# indie bot...
# indiebot id : IndieNews_bot

#require 'open-uri'
require 'rubygems'
#require 'nokogiri'
require 'twitter'

$indie_bot_name = "IndieNews_bot"

puts "Tweetbot collector v0.2"

Twitter.configure do |config|
  config.consumer_key = 'YuI89f43YzNR85uZvl6qyw'
  config.consumer_secret = 'wWkWLghITcEDaah9YsM6xFuAdXrk7OY8X1ztAvgaKIc'
  config.oauth_token = '104524073-NWFQMPHWu4KyIVwswdx7mKDmVWattxGB7Ie5M1un'
  config.oauth_token_secret = 'NdI9T7E4eJOyX3F0Lu5vuw6OcR0TFtCjAlYje4ebEuE'
end

#@buffer = Twitter.user_timeline($indie_bot_name, { :count=>100 } )

#@buffer =  Twitter.search( "@#{$indie_bot_name}",
#						  { :result_type=> "recent" , 
#							:rpp=> 20 }  )

@buffer = Twitter.media_timeline($indie_bot_name, { :count=>100,
		:include_entities=> true } )

@buffer.each do | status |
	if status.text =~ /\[공연\]/
		len = status.text.length;
		if status.text.length > 48 then len = 48 end
		puts "\033[93m#{status.user}\033[0m : #{status.text[0..len]}..."
		status.text =~ /http:\/\/.*/
		puts "picture : \033[94m#{$~}\033[0m"
		status.text =~ /'.*'/
		puts "title : \033[95m#{$~}\033[0m"
		status.text =~ /\d+\/\d+\(.+\)/
		puts "date : #{$~}"
		status.text =~ /@.+?\s/
		puts "org : #{$~}"
	else
		puts "\033[92m 해당되지 않는 트윗 \033[0m: #{status.text[0..10]}..."
	end
end

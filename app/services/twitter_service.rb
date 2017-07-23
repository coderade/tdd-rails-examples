class TwitterService
	def initialize

		# To configure your API client,
		# you need to create a simple twitter application on the link https://apps.twitter.com

		@client = Twitter::REST::Client.new do |config|
			config.consumer_key = 'YOUR CONSUMER KEY HERE'
			config.consumer_secret = 'YOUR CONSUMER SECRET HERE'
			config.access_token = 'YOUR ACCESS TOKEN HERE'
			config.access_token_secret = 'YOUR ACESS TOKEN SECRET HERE'
		end
	end

	def tweet(message)
		@client.update(message)
	end
end
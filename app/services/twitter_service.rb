class TwitterService
	def initialize
		@client = Twitter::REST::Client.new do |config|
			config.consumer_key = 'ZP4LQvAtV7DsHfFQhLyabdYqG'
			config.consumer_secret = '9tQUWEqB7c3eQIksWZclaAqC44L9OpFwfhKP8AK4NgZpgWL2KM'
			config.access_token = '321696384-snChjxRMU3KE6BeyvlGhHCmUJkyNnSVjgpFyUdsJ'
			config.access_token_secret = '4VLiyN6nKAtrtpZmlzhLt5ooTjGNoJIsE4H8ThIqgJKEc'
		end
	end

	def tweet(message)
		@client.update(message)
	end
end
require 'httparty'
##Read more on httparty
##Its a gem so install it
response = HTTParty.get('https://www.youtube.com/')

# puts response.body
puts response.message 
puts response.headers.inspect
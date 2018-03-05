# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'rubygems'
require 'twilio-ruby'
require 'envyable'
Envyable.load('config/env.yml')

account_sid = ENV["TWILLIO_ACCOUNT_SID"]
auth_token = ENV["TWILLIO_AUTH_TOKEN"]
client = Twilio::REST::Client.new account_sid, auth_token

from = '+447533028586' # Your Twilio number
to = '+447495309575' # Your mobile phone number

time = (Time.now + 1*60*60).strftime('%r')

client.messages.create(
from: from,
to: to,
body: "Thank you! Your order was placed and will be delivered before #{time}"
)

require 'rubygems'
require 'mechanize'
require 'logger'
require 'open-uri'

class Submit

def self.go
agent = Mechanize.new
agent.log = Logger.new "mech.log"
agent.user_agent_alias = 'Mac Safari'


page = agent.get "http://wrfl.fm/login/"

form = agent.page.forms[0]

username_field = form.field_with(:name => "username")
username_field.value = "DJCRAZYCARL"
password_field = form.field_with(:name => "password")
password_field.value = "XXXXXXX" <log that shit in, dawg.
form.submit

page.link_with(:href => "/en/playlist").click





artist = "nil"
song = "nil"
album = "nil"
playbox = 0

plays_form = agent.page.forms[0]
puts agent.page.forms[0].fields
plays_form.field_with(:name => "artist").value = "#{artist}"
plays_form.field_with(:name => "song").value = "#{song}"
plays_form.field_with(:name => "album").value = "#{album}"
plays_form.field_with(:name => "playbox").value = "#{playbox}"

agent.submit plays_form
# puts search_results.body

# puts plays_form
end

end

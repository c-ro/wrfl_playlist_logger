require 'mechanize'
require 'logger'

class Submit
def self.go
agent = Mechanize.new
agent.log = Logger.new "mech.log"
agent.user_agent_alias = 'Google Chrome'

page = agent.get "http://wrfl.fm/en/playlist/"
plays_form = page.form_with :action => "."
# plays_form.field_with(:name => "artist").value = "#{artist}"
# plays_form.field_with(:name => "artist").value = "#{song}"
# plays_form.field_with(:name => "artist").value = "#{album}"
# plays_form.field_with(:name => "artist").value = "#{playbox}"

# search_results = agent.submit plays_form
# puts search_results.body

puts plays_form
end

end

# Ruby (w/o) Rails, developed by Malcolm Gin on macOS Catalina with ruby 2.6.3p62 (2019-04-16 revision 67580) [universal.x86_64-darwin19]
# Based on sample code from https://www.twilio.com/blog/2015/10/4-ways-to-parse-a-json-api-with-ruby.html
require 'net/http'
require 'json'

url = 'https://translifeline.org/hiring_stats_sample'
uri = URI(url)
response = Net::HTTP.get(uri)

# JSON coding
parsed_json = JSON.parse(response)
ans_value = parsed_json["answered"]

# Based on 3rd idiom at https://www.programming-idioms.org/idiom/173/format-a-number-with-grouped-thousands/2440/ruby
puts "Answered value, with thousands comma separators: " + ans_value.to_s.gsub(/\B(?=(...)*\b)/, ',')

require 'nokogiri'
require 'open-uri'

url = "https://news.ycombinator.com/"

page = Nokogiri::HTML(open(url))
print page.css('title')[0].text
links = page.css('a')

links.each do |f|
  puts f.text
end
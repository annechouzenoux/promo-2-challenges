require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"
require 'open-uri'
require 'nokogiri'
require 'faker'
require 'rubygems'


puts "Seeding database..."
# 1. create fake users

users = []
5.times do
  users << User.create(name: Faker::Name.name, email: Faker::Internet.email)
end


  #3.times do
  # user.posts.create(name: Faker::Lorem.sentence(4) date: Time.now, source_url: Faker::Internet.email, rating: rating)

# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

doc = Nokogiri::HTML(open('https://news.ycombinator.com'))
# Print out each link using a CSS selector
doc.css('td.title > a').each do |link|
  name = link.inner_text
  href = link['href']

  sibling = link.parent.parent.next_sibling
  if sibling
    span = sibling.search('td.subtext > span').first

    score = 0
    score = span.inner_text.to_i unless span.nil?

    user = users.sample
    user.posts.create(name: name, date: Time.now, source_url: href, rating: score)
  end

end





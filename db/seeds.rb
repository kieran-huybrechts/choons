require 'json'
require 'open-uri'

puts "Resetting the database..."

Comment.destroy_all
Message.destroy_all
Post.destroy_all
Song.destroy_all
Circle.destroy_all
Following.destroy_all
User.destroy_all

puts "Database resetted!"

puts "Generating users..."

puts "Succesfully generated #{User.count} users"


puts "Generating XXX..."



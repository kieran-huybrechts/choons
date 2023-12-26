require 'json'
require 'open-uri'

puts 'Resetting the database...'

Comment.destroy_all
Message.destroy_all
Post.destroy_all
Song.destroy_all
Circle.destroy_all
Following.destroy_all
User.destroy_all

puts 'Database resetted!'

puts 'Generating users & followers...'

user1 = User.create!(
  email: 'user1@gmail.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Kieran',
  last_name: 'Huybrechts',
  username: 'partiboi32'
)

user1_url = 'https://thewestreviewdotcom.files.wordpress.com/2016/05/cd1nir0uaaarpd0.jpg'
user1_file = URI.open(user1_url)
user1.photo.attach(io: user1_file, filename: 'user1_img.jpeg', content_type: 'image/png')
user1.save!

user2 = User.create!(
  email: 'user2@gmail.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Max',
  last_name: 'Loiseau',
  username: 'ZeBird'
)

user2_url = 'https://messages-personnels.com/wp-content/uploads/2023/08/kolors-italodisco.jpg'
user2_file = URI.open(user2_url)
user2.photo.attach(io: user2_file, filename: 'user2_img.jpeg', content_type: 'image/png')
user2.save!

user3 = User.create!(
  email: 'user3@gmail.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Anderson',
  last_name: 'Paak',
  username: 'Anderson .Paak'
)

user3_url = 'https://i.pinimg.com/736x/76/1a/2c/761a2cb310e08ba2d94dcc3e1952fa41.jpg'
user3_file = URI.open(user3_url)
user3.photo.attach(io: user3_file, filename: 'user3_img.jpeg', content_type: 'image/png')
user3.save!

user4 = User.create!(
  email: 'user4@gmail.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'John',
  last_name: 'Noseda',
  username: 'Italo_Island'
)

user4_url = 'https://www.electronicbeats.net/app/uploads/2017/09/italo-disco.jpg'
user4_file = URI.open(user4_url)
user4.photo.attach(io: user4_file, filename: 'user4_img.jpeg', content_type: 'image/png')
user4.save!

user5 = User.create!(
  email: 'user5@gmail.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Peter',
  last_name: 'Nguyen',
  username: 'Bonzaiiii'
)

user5_url = 'https://i1.sndcdn.com/artworks-I5p7zDK2WsoEjioj-t3NSXg-t500x500.jpg'
user5_file = URI.open(user5_url)
user5.photo.attach(io: user5_file, filename: 'user5_img.jpeg', content_type: 'image/png')
user5.save!

User.all.each do |follower|
  User.all.each do |followee|
    Following.create!(follower: follower, followee: followee) unless follower == followee
  end
end

puts "Succesfully generated #{User.count} users"

puts 'Generating circles & members...'

circle1 = Circle.create!(
  name: 'Belters4Us'
)

circle1_url = 'https://i1.sndcdn.com/artworks-S7hhxQAKegfmyYZM-bEnLfA-t500x500.jpg'
circle1_file = URI.open(circle1_url)
circle1.photo.attach(io: circle1_file, filename: 'circle1_img.jpeg', content_type: 'image/png')
circle1.save!

circle2 = Circle.create!(
  name: 'TodaysWax'
)

circle2_url = 'https://images.xceed.me/clubs/gallery/la-cabane-club-brussels-xceed-3.jpg'
circle2_file = URI.open(circle2_url)
circle2.photo.attach(io: circle2_file, filename: 'circle2_img.jpeg', content_type: 'image/png')
circle2.save!

User.all.each do |user|
  Circle.all.each do |circle|
    CirclesUser.create!(user: user, circle: circle, is_admin: false) unless user == circle.users.first
    CirclesUser.create!(user: user, circle: circle, is_admin: true) if user == circle.users.first
  end
end

puts "Succesfully generated #{Circle.count} circles"

puts 'Generating songs...'


song1 = Song.create!(spotify_url: 'https://open.spotify.com/track/4QreGo9Ivksjv4c3Bnk5f3?si=7f7f1b6b88a849a5', spotify_embed_url: 'https://open.spotify.com/embed/track/4QreGo9Ivksjv4c3Bnk5f3?utm_source=generator')
song2 = Song.create!(spotify_url: 'https://open.spotify.com/track/0PGIuagZEKjb3PMTnS0tGZ?si=c2086ce805774065', spotify_embed_url: 'https://open.spotify.com/embed/track/0PGIuagZEKjb3PMTnS0tGZ?utm_source=generator')
song3 = Song.create!(spotify_url: 'https://open.spotify.com/track/0WhWz82kaHo2ulbhuHTth8?si=9e39daf1e756410b', spotify_embed_url: 'https://open.spotify.com/embed/track/0WhWz82kaHo2ulbhuHTth8?utm_source=generator')
song4 = Song.create!(spotify_url: 'https://open.spotify.com/track/5aWVNrjqFHCATLIhS2na3t?si=e493c7a6071c4f2b', spotify_embed_url: 'https://open.spotify.com/embed/track/5aWVNrjqFHCATLIhS2na3t?utm_source=generator')
song5 = Song.create!(spotify_url: 'https://open.spotify.com/track/72gThlE28ynbFgSVkdZkdo?si=77feb532d71a4b37', spotify_embed_url: 'https://open.spotify.com/embed/track/72gThlE28ynbFgSVkdZkdo?utm_source=generator')
song6 = Song.create!(spotify_url: 'https://open.spotify.com/track/7n2kFvSGMN51HVITbVgyu9?si=f50ed0088a724905', spotify_embed_url: 'https://open.spotify.com/embed/track/7n2kFvSGMN51HVITbVgyu9?utm_source=generator')
song7 = Song.create!(spotify_url: 'https://open.spotify.com/track/2dXBGKusFEVysXoBhv9hmZ?si=48b14521320245e2', spotify_embed_url: 'https://open.spotify.com/embed/track/2dXBGKusFEVysXoBhv9hmZ?utm_source=generator')
song8 = Song.create!(spotify_url: 'https://open.spotify.com/track/6yCfjMCxxqrMTwGTOfnkoa?si=5632d341a8a84884', spotify_embed_url: 'https://open.spotify.com/embed/track/6yCfjMCxxqrMTwGTOfnkoa?utm_source=generator')
song9 = Song.create!(spotify_url: 'https://open.spotify.com/track/67ng2HslmmlZOkwZY7rqPy?si=d29f6da2d8ab4c19', spotify_embed_url: 'https://open.spotify.com/embed/track/67ng2HslmmlZOkwZY7rqPy?utm_source=generator')

puts "Succesfully generated #{Song.count} songs"

puts 'Generating posts...'

post1 = Post.create!(
  description: 'True trancy bliss <3',
  category: 'Solo'
)

PostsUser.create!(post: post1, user: user1, song: song1, is_creator: true)

post2 = Post.create!(
  description: 'Ni siquiera sé lo que estoy escuchando',
  category: 'Solo'
)

PostsUser.create!(post: post2, user: user2, song: song2, is_creator: true)

post3 = Post.create!(
  description: 'Wobble wobble',
  category: 'Solo'
)

PostsUser.create!(post: post3, user: user3, song: song3, is_creator: true)

post4 = Post.create!(
  description: 'Best ever Daft Punk remix?',
  category: 'Solo'
)

PostsUser.create!(post: post4, user: user4, song: song4, is_creator: true)

post5 = Post.create!(
  description: 'Probably my favourite Bonzai track',
  category: 'Solo'
)

PostsUser.create!(post: post5, user: user5, song: song5, is_creator: true)

post6 = Post.create!(
  description: 'Damon Albarn with another sweet little sidequest',
  category: 'Solo'
)

PostsUser.create!(post: post6, user: user1, song: song6, is_creator: true)

post7 = Post.create!(
  description: "Tunes don't get a lot better than this",
  category: 'Solo',
  circle: circle1
)

PostsUser.create!(post: post7, user: user1, song: song7, is_creator: true)

post8 = Post.create!(
  description: 'Some South African vibes',
  category: 'Solo',
  circle: circle2
)

PostsUser.create!(post: post8, user: user2, song: song8, is_creator: true)

post9 = Post.create!(
  description: "Some hard bangin' grooves",
  category: 'Solo',
  circle: circle1
)

PostsUser.create!(post: post9, user: user3, song: song9, is_creator: true)

puts "Succesfully generated #{Post.count} Posts"

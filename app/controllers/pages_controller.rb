class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @posts = Post.all
    #Need to correct this because this doesn't give the right order!
    @posts_embed_urls = []
    @posts.each do |post|
      song = post.songs.first
      match_data = /spotify\.com\/track\/([^?]+)/.match(song.spotify_url)
      track_id = match_data[1] if match_data.present?
      embedded_url = "https://open.spotify.com/embed/track/#{track_id}?utm_source=generator&theme=0"
      @posts_embed_urls << embedded_url
    end

  end
end

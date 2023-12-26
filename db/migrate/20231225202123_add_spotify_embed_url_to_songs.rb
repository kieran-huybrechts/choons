class AddSpotifyEmbedUrlToSongs < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :spotify_embed_url, :string
  end
end

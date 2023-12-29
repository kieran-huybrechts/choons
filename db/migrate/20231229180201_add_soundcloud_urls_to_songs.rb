class AddSoundcloudUrlsToSongs < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :soundcloud_url, :string
    add_column :songs, :soundcloud_embed_url, :string
  end
end

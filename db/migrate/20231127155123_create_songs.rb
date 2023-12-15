class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :spotify_url

      t.timestamps
    end
  end
end

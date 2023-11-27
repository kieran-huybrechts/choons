class CreateLibrariesLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :libraries_links do |t|
      t.references :user, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end

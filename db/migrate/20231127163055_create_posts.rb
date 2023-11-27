class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :circle, null: false, foreign_key: true
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end

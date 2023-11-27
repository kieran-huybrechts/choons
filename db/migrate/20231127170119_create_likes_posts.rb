class CreateLikesPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :likes_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end

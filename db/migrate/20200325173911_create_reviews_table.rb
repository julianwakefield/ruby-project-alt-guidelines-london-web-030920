class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :star_rating
      t.integer :user_id
      t.integer :cocktail_bar_id

    end
  end
end

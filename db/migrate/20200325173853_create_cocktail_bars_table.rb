class CreateCocktailBarsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktail_bars do |t|
      t.string :name
      t.integer :hygiene_rating
     
    end
  end

end

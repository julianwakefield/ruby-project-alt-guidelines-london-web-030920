class Review < ActiveRecord::Base
        belongs_to :user
        belongs_to :cocktail_bar
end
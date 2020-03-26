class User < ActiveRecord::Base
    has_many :reviews
    has_many :cocktail_bar, through: :reviews
end
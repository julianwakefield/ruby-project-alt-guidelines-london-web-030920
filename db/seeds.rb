# 10.times do 
#     User.create(name: Faker::Name.name)
# end

# 5.times do
#     Cocktail_bar.create(name: Faker::Company.name)
# end

# 10.times do
#     Review.create(user_id: User.all.sample.id, cocktail_bar_id: Bar.all.sample.id, content: Faker::Hacker.say_something_smart)
# end

user1 = User.create(name: "Han")
user2 = User.create(name: "Luke")
user3 = User.create(name: "Indiana")
user4 = User.create(name: "Obi Wan")
user5 = User.create(name: "Short-round")

cocktail_bar1 = CocktailBar.create(name: "Rick's Saloon", hygiene_rating: 5)
cocktail_bar2 = CocktailBar.create(name: "Mos Eisley Cantina Bar", hygiene_rating: 3)
cocktail_bar3 = CocktailBar.create(name: "Lao-Chi Bar", hygiene_rating: 4)
cocktail_bar4 = CocktailBar.create(name: "The Raven Tavern", hygiene_rating: 3)
cocktail_bar5 = CocktailBar.create(name: "Coyote Ugly Saloon", hygiene_rating: 2)

review_1 = Review.create(star_rating: 5, content: "My favourite bar!", user_id: user1.id, cocktail_bar_id: cocktail_bar2.id)
review_2 = Review.create(star_rating: 5, content: "I love this bar! It has so much character!",user_id: user5.id, cocktail_bar_id: cocktail_bar3.id)
review_3 = Review.create(star_rating: 4, content: "Such a great place with amazing entertainment!",user_id: user4.id, cocktail_bar_id: cocktail_bar5.id)
review_4 = Review.create(star_rating: 5, content: "The cocktails are this bar are to die for!",user_id: user3.id, cocktail_bar_id: cocktail_bar3.id)
review_5 = Review.create(star_rating: 3, content: "Out of this world!", user_id: user4.id, cocktail_bar_id: cocktail_bar3.id)
review_6 = Review.create(star_rating: 4, content: "A great night out, until the Nazi's set the place on fire.", user_id: user3.id, cocktail_bar_id: cocktail_bar4.id)
review_7 = Review.create(star_rating: 2, content: "Too many Storm Troopers", user_id: user1.id, cocktail_bar_id: cocktail_bar2.id)
review_8 = Review.create(star_rating: 4, content: "Great music, great cocktails!", user_id: user1.id, cocktail_bar_id: cocktail_bar3.id)
review_9 = Review.create(star_rating: 1, content: "No droids allowed!!", user_id: user2.id, cocktail_bar_id: cocktail_bar2.id)
review_10 = Review.create(star_rating: 4, content: "Too many Nazi's!", user_id: user3.id, cocktail_bar_id: cocktail_bar3.id)


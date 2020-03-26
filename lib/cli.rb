   require "pry"
   class Application

     def run
    # binding.pry
        user = welcome
        while true do 
            cocktail_bar_list
            bar = find_bar
        menu_option1
        bar_menu_actions(bar, user)
        end
    end
    def user_input
        gets.chomp
    end
            def welcome
                puts "Hello Welcome to Bar Review! Please enter your name."
                reply = user_input
                puts "Hello #{reply}. Please select an option from the list below"
                User.find_or_create_by(name: reply)
            end

            def cocktail_bar_list
        
               CocktailBar.all.each_with_index do |bar, index|
                  puts "#{index +1} #{bar.name}"
                   
               end
            end

            def menu_option1
                puts "1 Review this bar"
                puts "2 Amend review of this bar"
                puts "3 Read reviews of this bar"
                puts "4 Delete a review"
                
            end

            def user_input_no
                input = user_input
                while input.to_i < 1
                "Please input a number."
                input = user_input
                end
                input.to_i
            end

            def find_bar
                selection = user_input_no
                CocktailBar.find_by(id: selection)
                
            end
            
            def reviewbar(bar, user)
                puts "Please enter a rating for our bar"
                reply = user_input_no
                puts "Write your comments below"
                comments = user_input
                Review.create(star_rating: reply , content: comments, user_id: user.id, cocktail_bar_id: bar.id)
            end

            def list_reviews(bar)
                   bar.reviews.each_with_index do |review, index|
                    puts "#{index +1} #{review.content}"
                end
           end

           def amend_review(review_reply, bar)
                amended_review = bar.reviews[review_reply -1]
                puts "Enter your new review"
                reply = user_input
                amended_review.update(content: reply)
           end
            
           def delete_review(bar)
            binding.pry
            list_reviews(bar)
            puts "Which review do you wish to delete?"
            reply = user_input_no
            delete_this_review = bar.reviews[reply -1]
            delete_this_review.destroy

           end

            def bar_menu_actions(bar, user)
                 reply = user_input_no
                   if reply == 1
                    reviewbar(bar, user)
                   
                
                elsif reply == 2
                    list_reviews(bar)
                    puts "Which review do you want to amend?"
                    review_reply = user_input_no
                    amend_review(review_reply, bar)


                   elsif reply == 3
                    list_reviews(bar)
                   elsif reply == 4
                    delete_review(bar)  
                end
            end

          
 end

   

   

#     what do I want the first menu to do? Write a new review, read current reviews or quit

#     def menu(menu)
#     menu.new.display
#     mainMenu
#     end
    
 

    
# end





    # methods needed:  
                        # for a menu of cocktail bars 
                        # for choosing cocktail bar selection and then displaying menu of options , read, write, amend reviews or "back"
                        # method for gathering reviews from database for that cocktail bar to be read
                        # method for writing a new review and adding to database
                        # method for amending existing reviews
                        # method for back to previous menu
                        # method for quit
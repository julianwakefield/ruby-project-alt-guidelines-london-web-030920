   require "pry"
   class Application

     def run
    # binding.pry
        welcome
        cocktail_bar_list
        bar = find_bar
        binding.pry
        puts_option1

    end
    def user_input
        gets.chomp
    end
            def welcome
                puts "Hello Welcome to Bar Review! Please enter your name."
                reply = user_input
                puts "Hello #{reply}. Please select an option from the list below"
            
            end

            def cocktail_bar_list
        
               CocktailBar.all.each_with_index do |bar, index|
                # puts "#{b.name}, #{b.hygiene_rating}"
                puts "#{index +1} #{bar.name}"
                   
               end
            end

            def puts_option1
                puts "1 Review this bar"
                puts "2 Amend review of this bar"
                puts "3 Read reviews of this bar"
                puts "4 Go back"
                
            end

            def find_bar
                selection = user_input
                CocktailBar.where(id: selection)
                
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
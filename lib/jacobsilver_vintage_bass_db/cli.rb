# CLI Controller
class JacobsilverVintageBassDb::CLI
   
   def call
      puts "Welcome to the Vintage Bass Databass!"
      menu
      goodbye
   end

   def menu
      choice = nil

      while choice != "exit"
         puts "Would you like to search by brand, model, or year? (choose a number), or type exit to quit."
         puts "1. Brand"
         puts "2. Model"
         puts "3. Year"
         choice = gets.strip.downcase
         case choice
            when "1"
               puts "Choose a brand from the options below (type a number)."
               list_brands
            when "2"
               list_models
            when "3"
               list_years
            else
               puts "Please try that again"               
         end
      end
   end

   def list_brands
         @brands = JacobsilverVintageBassDb::Brand.brand
         @brands.each.with_index(1) {|brand, i| puts "#{i}. #{brand.name}"}
   end

   def list_models
      puts "Models: Please choose a number to see a list of years that model was manufactured"
      @models = JacobsilverVintageBassDb::Model.model
      @models.each.with_index(1) {|model, i| puts "#{i}. #{model.brand} - #{model.name}"}
   end

   def list_years
      puts <<-DOC.gsub /^\s*/, ''
         1. 1951
         2. 1952
         3. 1953
         4. 1954
         5. 1955
         6. 1956
         7. 1957
         8. 1959
         9. 1959
         10. 1960
      DOC
   end

   def goodbye
      puts "Check ya later!"
   end

end
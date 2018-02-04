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
      puts <<-DOC.gsub /^\s*/, ''
         1. Rickenbacker
         2. Fender
         3. Gibson
         4. Ampeg
         5. Musicman
         DOC
         @brands = JacobsilverVintageBassDb::Brands.brand
   end

   def list_models
      puts <<-DOC.gsub /^\s*/, ''
         1. Jazz
         2. Precision
         3. Telecaster
         4. Thunderbird
         5. EB
         6. Grabber
         7. Ripper
         8. Les Paul
         9. V
         10. RD
      DOC
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
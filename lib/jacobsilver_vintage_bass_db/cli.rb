# CLI Controller
class JacobsilverVintageBassDb::CLI
   
   def call
      puts "Welcome to the Vintage Bass Databass!"
      menu
   end

   def menu
      puts "Would you like to search by brand, model, or year? (choose a number)"
      puts "1. Brand"
      puts "2. Model"
      puts "3. Year"
      choice = gets.strip
      if choice == "1"
         list_brands
      elsif choice == "2"
         list_models
      elsif choice == "3"
         list_years
      else
         puts "Please try that again."
         menu
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
   end

   def list_models
      puts <<-DOC.gsub /^\s*/, ''
         1. model #
         2. model #
         3. model #
         4. model #
         5. model #
         6. model #
         7. model #
         8. model #
         9. model #
         10. model #
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

end
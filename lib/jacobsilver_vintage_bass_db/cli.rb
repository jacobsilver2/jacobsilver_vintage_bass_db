# CLI Controller
class JacobsilverVintageBassDb::CLI
   
   def call
      puts "Welcome to the Vintage Bass Databass!"
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
   end

   def list_years
   end

end
# CLI Controller
require 'pry'
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
               puts "Brand: Choose a brand from the options below (type a number)."
               list_brands
               choose_model_from_brand
            when "2"
               puts "Model: Please choose a number to see a list of years that model was manufactured"
               list_models
               choose_model
               #choose_model calls #list_years to display a list of years manufactured
               choose_year
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

   def self.find_by_brand(brandName)
      theBrand = JacobsilverVintageBassDb::Brand.all.select{|brand| brand.name == brandName }

   end

   def choose_model_from_brand
      puts "Please choose a model"
      choice = gets.strip.downcase
      JacobsilverVintageBassDb::Brand.all[choice.to_i - 1].models.each.with_index(1){|model, i| puts "#{i}. #{model} "}
   end

   def list_models
      @models = JacobsilverVintageBassDb::Model.model
      @models.each.with_index(1) {|model, i| puts "#{i}. #{model.brand} - #{model.name}"}
   end

   def choose_model
      choice = gets.strip.downcase
      puts "The #{@models[choice.to_i - 1].brand} #{@models[choice.to_i - 1].name}.  Please choose from the list of years manufactured to learn more about that specific bass."
      list_years(choice.to_i - 1)
   end

   def choose_year
      puts "Choose which year you'd like to learn more about"
      choice = gets.strip.downcase
      display_instrument(choice)
   end

   def display_instrument(choice)
      @instruments = JacobsilverVintageBassDb::Instrument.instrument
      puts "The #{@instruments[choice.to_i - 1].year} #{@instruments[choice.to_i - 1].brand} #{@instruments[choice.to_i - 1].name}."
      puts @instruments[choice.to_i - 1].description
   end

   def list_years(choice)
      @models[choice.to_i - 1].years.each.with_index(1) {|year, i| puts "#{i}. #{year}" }
   end

   def goodbye
      puts "Check ya later!"
   end

end
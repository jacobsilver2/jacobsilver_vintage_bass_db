class JacobsilverVintageBassDb::Model
   attr_accessor :name, :brand, :years
   def self.model
      model_1 = self.new
      model_1.name = "4001"
      model_1.brand = "Rickenbacker"
      model_1.years = ["1968","1969","1970","1971","1972","1973","1974","1975","1976","1977","1978","1979","1980","1981","1982","1983"]

      model_2 = self.new
      model_2.name = "4001-S"
      model_2.brand = "Rickenbacker"
      model_2.years = ["1964","1971","1972","1975","1976","1979","1980","1981","1982","1983"]

      model_3 = self.new
      model_3.name = "4003"
      model_3.brand = "Rickenbacker"
      model_3.years = ["1979","1980","1981","1982","1983"]

      model_4 = self.new
      model_4.name = "4003-S"
      model_4.brand = "Rickenbacker"
      model_4.years = ["1982"]
      
      model_5 = self.new
      model_5.name = "4005"
      model_5.brand = "Rickenbacker"
      model_5.years = ["1966", "1967", "1968","1969", "1974", "1979","1981","1982",]

      [model_1, model_2, model_3, model_4, model_5]
   end
end
class JacobsilverVintageBassDb::Brand
   attr_accessor :name, :models
   @@all = []
   def self.brand
      #I should return a bunch of instances of brand
      brand_1 = self.new
      brand_1.name = "Rickenbacker"
      brand_1.models = ["4001","4001-S","4003","4003-S","4005","3000","3001","4000","4002"]
      @@all << brand_1
      
      brand_2 = self.new
      brand_2.name = "Fender"
      brand_2.models = ["Jazz", "Precision", "Telecaster"]
      @@all << brand_2

      brand_3 = self.new
      brand_3.name = "Gibson"
      brand_3.models = ["Thunderbird IV (reverse)", "Thunderbird II (reverse)", "Thunderbird IV (non reverse)", "Thunderbird II (non reverse)", "EB0", "EB1", "EB3", "EB2", "EB2-C", "EB2-D", "EB0-F", "EB0-L", "EB3-L", "EB4-L", "G1 Grabber", "G3 Grabber", "Ripper L9S", "Les Paul Bass", "V Bass", "RD Artist", "RD Standard"]
      @@all << brand_3

      brand_4 = self.new
      brand_4.name = "Ampeg"
      brand_4.models = ["B15-N", "B15-S", "B18-N", "SVT", "Dan Armstrong", "Scroll Bass", "Devil Bass", "V4-B"]
      @@all << brand_4

      brand_5 = self.new
      brand_5.name = "Musicman"
      brand_5.models = ["Stingray", "Sabre"]
      @@all << brand_5

      [brand_1, brand_2, brand_3, brand_4, brand_5]
   end



   def self.all
      @@all
   end
end
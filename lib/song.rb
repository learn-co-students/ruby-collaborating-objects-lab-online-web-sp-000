class Song 
  attr_accessor :name, :artist 
   @@all = [] 
   
  def initialize(name)
    @name = name 
    save 
  end
  
   def save 
    @@all <<self 
  end 
  
  def self.all 
    @@all 
  end 
end 

# "Action Bronson - Larry Csonka - indie.mp3")
# "Real Estate - Green Aisles - country.mp3")
# "Real Estate - It's Real - hip-hop.mp3")
# "Thundercat - For Love I Come - dance.mp3") 

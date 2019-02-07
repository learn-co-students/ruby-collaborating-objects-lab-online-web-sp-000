class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @songs = []
   @@all << self
  end 
  
  def add_song(song)
  @songs << song 
end

def self.all
  @@all 
end

def save
  @@all << self
end 

def self.find_or_create_by_name(name)
if self.all.detect {|x| x.name == name}
  self.all.detect {|x| x.name == name}
else 
  name = self.new(name)
  
end  
end 

def print_songs
  self.songs.each do |song|
    puts song.name 
end
end

end 




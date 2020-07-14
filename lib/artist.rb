class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
   @songs << song
    song.artist = self
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self 
    
  end 
  
  def self.find_or_create_by_name(name)
    existing_artist = self.all.find {|artist| artist.name == name}
      if existing_artist
        existing_artist
      else name = Artist.new(name)
        name.save
        name
      end
  end 
  
  def print_songs 
    self.songs.each{|song| puts song.name} 
  end 
  
    
    
    
  
  
  
end 
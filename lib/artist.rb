class Artist 
   attr_accessor :name, :songs
    @@all =[]
    @@song_count = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(name)
    # song = Song.new(name)
    @songs << name
    @@song_count += 1 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name)
    locate_artist = self.all.find {|artist| artist.name == name} 
      if locate_artist 
        locate_artist
      else 
        new_artist = Artist.new(name)
        new_artist.save 
        new_artist
      end 
  end  #end of the class Method 
  
  def print_songs
    @songs.each {|song| puts song.name}
  end 
  
end 
class Song
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end   
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename) 
    new_instance_of_song = filename.split(' - ')
    name = new_instance_of_song[1]
    new_song = Song.new(name)
    new_artist = Artist.new(new_instance_of_song[0])
    new_song.artist = new_artist
    new_song 
  end   
  
  def artist_name=(name)
    variable = Artist.all.find {|artist| artist.name == name}
    if variable 
      @artist = variable 
    else 
     new_artist = Artist.new(name) 
    @artist = new_artist 
    end 
  end   
# file_name = 'Michael Jackson - Black or White - pop.mp3'
#how do you create a new instance of a song - you need name and artist 
  
  
end   
  
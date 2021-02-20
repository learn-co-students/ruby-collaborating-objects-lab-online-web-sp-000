require 'pry'

class Song 
  attr_accessor :name, :artist 
   @@all = [] 
   
  def initialize(name)
    @name = name 
    save 
  end
  
   def save 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(file_name)
    #pry(Song)> filename => "Michael Jackson - Black or White - pop.mp3"
    #pry(Song)> filename.split(" - ")[1] => "Black or White"
    song_name = file_name.split(" - ")[1] 
    artist_one = file_name.split(" - ")[0]
    new_song = Song.new(song_name)
    new_song.artist_name=(artist_one)
    new_song
  end
  
  def artist_name=(name) 
      self.artist = Artist.find_or_create_by_name(name)
  end 
end


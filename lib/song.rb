require 'pry'

class Song 
  attr_accessor :artist
  attr_reader :name
  
  @@all = []
   
  def initialize(name)
    @name = name 
    self.save
  end
  
  def save
   @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def artist_name=(name)
    
    artist_found = Artist.all.find {|artist| artist.name == name}
    
    if !artist_found
      puts "ARTIST NOT FOUND, CREATING NEW ARTIST"
      new_artist = Artist.new(name)
      self.artist = new_artist
    else
      self.artist = artist_found
    end
    
  end
  
  def self.new_by_filename (file_name)
    
    file_array = file_name.split("-")

    name_of_artist = file_array[0].strip
    song_title = file_array[1].strip
    
    new_song = Song.new(song_title)
    new_song.artist_name = name_of_artist
    new_song
  end
  # binding.pry
end
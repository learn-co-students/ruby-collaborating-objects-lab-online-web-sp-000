class Artist 
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @song = song
    @@all << self
  end
  
  def self.all 
  @@all
  end
  
def songs
Song.all.select {|song| song.artist == self}
end
  
  def add_song(song)
    song.artist = self
  end 
  
  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| name == artist.name}
    if found_artist
    return found_artist
  else
    name = Artist.new(name)
  end
  end
  
  def print_songs
  self.songs.select {|song| puts song.name }
 end
  
end
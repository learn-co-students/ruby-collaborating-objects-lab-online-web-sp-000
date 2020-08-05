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
  split_name = filename.chomp(".mp3").split(" - ")
  song = self.new(split_name[1])
  song.artist_name = split_name[0]
  artist = Artist.find_or_create_by_name(split_name[0])
  song.artist = artist
  # artist.add_song(song)
  song
end

def artist_name=(artist_name)
  artist = Artist.find_or_create_by_name(artist_name)
  self.artist = artist
  # artist.add_song(self)
end

end
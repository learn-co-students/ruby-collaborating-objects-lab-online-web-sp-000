class Song
attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @artist = artist
  save
end

def save
@@all << self
end

def self.all
  @@all
end

def self.new_by_filename(filename)
  song_name = filename.split(" - ")[1]
  artist_name = filename.split(" - ")[0]
  song = self.new(song_name)
  song.artist_name = artist_name
  song
end

def artist_name=(artist_name)
  artist = Artist.find_or_create_by_name(artist_name)
  self.artist = artist
  artist.add_song(self)
end

end

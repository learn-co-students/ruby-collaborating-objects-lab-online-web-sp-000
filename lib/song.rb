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
new_song = Song.new(file_name.split(" - ")[1])
artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
new_song.artist = artist
artist.add_song(new_song)
new_song
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
end

end

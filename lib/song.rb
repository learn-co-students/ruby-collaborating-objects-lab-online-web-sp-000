class Song
attr_accessor :name, :artist
@@all = [] #this object is responsible for holding an array of all song instances that exist

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.name
  @name
end

def artist=(name)
  self.artist
end

def self.new_by_filename(filename)
  song = filename.split(" - ")[1]
  artist = filename.split(" - ")[0]
  new_song = self.new(song)
  new_song.artist_name = artist
  new_song
  end


def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
end


end #end of class

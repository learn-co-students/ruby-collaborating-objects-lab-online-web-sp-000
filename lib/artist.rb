class Artist
attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @songs = []
  save
end

def save
  @@all << self #saves the artist name to the all array
end

def name=(name)
  @name = name
end

def self.all
  @@all
end

def add_song(song)
  #we need to now tell the SONG that it belongs to the ARTIST
  @songs << song
end

def songs
@songs
end

def self.find_or_create_by_name(name)
  found_artist = self.all.find {|artist| artist.name == name}
  if found_artist
    found_artist
  else
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

end

def print_songs
  @songs.each { |song| puts song.name }
end

end #end class

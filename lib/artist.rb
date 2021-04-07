class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
@name = name
@songs = []
save
end

def save
  @@all << self
end

def self.all
@@all
end

def add_song(song)
@songs << song
end

def songs
@songs
end

def self.find_or_create_by_name(name)
self.all.detect {|a| a.name == name} || Artist.new(name)
end

def print_songs
  @songs.each {|s| puts s.name}
end

end

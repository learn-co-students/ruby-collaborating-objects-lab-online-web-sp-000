class Artist

attr_accessor :name

@@all = []

def initialize (name)
  @name = name
@@all << self
@songs=[]
end

def add_song(song_name)
self.songs << song_name
end


def self.find_or_create_by_name(name)
  result = @@all.find{|artist| artist.name == name}
if result != nil
  return result

else
  artist = Artist.new(name)
  artist
end
end

def self.all
@@all
end

def songs
  @songs
end

def print_songs
self.songs.each {|song| puts song.name}
end

end

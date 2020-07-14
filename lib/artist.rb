class Artist
attr_accessor :name, :songs
@@all = []

def self.all
  @@all
end


def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song unless @songs.include?(song)
end

def save
  @@all << self unless @@all.include?(self)
end

def self.find_or_create_by_name(name)
  all_names = @@all.collect {|artist| artist.name}
  if all_names.include?(name)
    @@all.detect {|artist| artist.name == name}
  else
    self.new(name)
  end
end

def print_songs
  @songs.each {|song| puts song.name}
end


end

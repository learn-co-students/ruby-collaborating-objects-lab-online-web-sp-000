require "pry"

class Artist
  
attr_accessor :name, :songs

@@all = []
  
def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
end

def save
  @@all << self
end

def self.all
  @@all
end

def  self.find_or_create_by_name(name)
  result = self.all.find {|artist| artist.name == name}
  if result == nil 
    new_artist = self.new(name)
    new_artist.save
    new_artist
  else
    result
end
end
  
  
  
# def self.find_or_create_by_name(name)
#     self.find(name) ? self.find(name) : self.create(name)
#   end

#   def self.find(name)
#     self.all.find {|artist| artist.name == name }
#   end

#   def self.create(name)
#     self.new(name).tap {|artist| artist.save}
#   end

def print_songs
  @songs.each {|song| puts song.name}
end

end
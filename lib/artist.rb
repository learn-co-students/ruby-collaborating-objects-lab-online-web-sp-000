
class Artist

  @@all=[]

  attr_accessor :name, :song

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

def songs
  Song.all.select{|songs| songs.artist==self}
end

def add_song(song)
  song.artist=self
end

def self.find_or_create_by_name(name)
  @@all.find{|new_artist| new_artist.name=name} || new_artist=Artist.new(name)
end

def print_songs
songs.each{|song| puts song.name}
end

end

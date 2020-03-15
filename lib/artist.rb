require "pry"
class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|songs| songs.artist == self}
  end
end

  def self.find_or_create_by_name(name)
    if @@all.any? {|artists| artists.name == name} == false
      Artist.new(name)
    else
      @@all.find {|artists| artists.name == name}
    end
  end
  
  def print_songs
    self.songs.each do |songs|
      puts songs.name
    end
end

end
  
#binding.pry






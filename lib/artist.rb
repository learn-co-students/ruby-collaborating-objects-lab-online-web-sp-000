class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find {|p| p.name == name} == nil
      artist = Artist.new(name)
      return artist
    else
      self.all.find {|p| p.name == name}
    end
  end
  
  def print_songs
    x = Song.all.select {|song| song.artist == self}
    x.each do |l|
      puts l.name
    end
  end
  
end
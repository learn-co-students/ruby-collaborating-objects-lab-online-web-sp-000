class Artist
  
  attr_accessor :name, :songs
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
    artist = self.all.select {|artist| artist.name == name}
    if artist.length < 1
      return Artist.new(name);
    else
      return artist.first;
    end
  end
  
  def print_songs
    self.songs.each do |song| puts song.name
  end
  end
  
  
end
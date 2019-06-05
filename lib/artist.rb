class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    songs << song
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    songs.each {|song| puts "#{song.name}"}
  end
  
  def self.find_or_create_by_name(artist_name)
    all.each {|artist| return artist if artist.name == artist_name}
    new_artist = self.new(artist_name)
    all << new_artist
    return new_artist
  end
  
  def self.all
    @@all
  end
end
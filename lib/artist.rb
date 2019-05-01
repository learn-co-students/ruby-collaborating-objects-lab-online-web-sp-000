class Artist 
  
  attr_accessor :name , :songs
  
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def save
    self.class.all << self
  end
  
  def print_songs
    self.songs.each{ |song| puts"#{song.name}" }
  end
  
  def self.all 
    @@all
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = all.detect{ |artist| artist.name === artist_name }
    if artist.nil? 
      self.new(artist_name) 
    else 
      artist
    end
  end
  
end
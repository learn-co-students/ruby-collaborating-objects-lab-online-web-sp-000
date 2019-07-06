class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
    self
  end
  
  def self.find_or_create_by_name(artist_name)
    searched_artist = @@all.select { |a| a.name == artist_name }.first
    
    if searched_artist.nil?
      created_artist = Artist.new(artist_name)
      return created_artist.save
    else
      searched_artist
    end
  end
  
  def print_songs
    @songs.each { |s| puts s.name }
  end
end
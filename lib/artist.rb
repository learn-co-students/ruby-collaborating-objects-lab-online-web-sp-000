class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def self.find_or_create_by_name(name)
    result = Song.all.find do 
      |song| 
      if !song.artist.nil?
        song.artist.name == name 
      else
        false
      end
    end
    return Artist.new(name) if result.nil?
    result.artist
  end
  
  def print_songs
    self.songs.each { |song| puts song.name }
  end
  
end
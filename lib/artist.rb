class Artist 
  attr_reader :name, :songs
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end
  
  def name=(artist_name)
    @name = artist_name
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    existing = self.all.detect {|artist_instance| artist_instance.name == artist_name} 
    existing == nil ? self.new(artist_name) : existing
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  
end 
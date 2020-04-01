class Artist

  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

end
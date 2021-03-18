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
    Song.all.select { |song| song.artist == self}
  end
    
  def self.find_or_create_by_name(name)
    matched = Song.all.detect { |song| song.artist && song.artist.name == name  }
    if matched  
      matched.artist
    else
      Artist.new(name)
    end
  end
  
  def print_songs
    songs.each { |song| puts song.name }
  end
end
  
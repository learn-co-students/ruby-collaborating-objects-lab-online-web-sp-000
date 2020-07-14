class Artist
  attr_accessor :name, :songs_arr
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs_arr = []
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def add_song(song)
    song.artist = self
    @songs_arr << song.name
  end
  
  def self.find_or_create_by_name(name)
    artist_name = self.all.find { |artist| artist.name == name }

    if artist_name.nil?
      puts 'creating artist by name'
      self.new(name)
    else
      puts 'returning artist by name'
      artist_name
    end
  end

    
  def print_songs
    puts @songs_arr
  end
end


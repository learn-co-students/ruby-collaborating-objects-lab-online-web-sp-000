class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
   self.all.find {|data| data.name == artist_name} || self.new(artist_name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find { |artist| artist.name == artist_name }.nil?
      new_artist = Artist.new(artist_name)
      new_artist.save
      new_artist
    else
      @@all.find { |artist| artist.name == artist_name }
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end 

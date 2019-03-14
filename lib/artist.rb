class Artist
  @@all = []
  attr_accessor :name, :songs

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

  def self.find_or_create_by_name(artist)
    if return_value = @@all.detect { |artist_object| artist_object.name == artist }
        # do nothing - the artist object was stored in return_value in the if statement
    else
      return_value = self.new(artist)
      return_value.save
    end
    return_value
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

end

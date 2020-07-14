class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist=(artist)

    @artist = artist
    artist.add_song(self)

  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)
    @@all.each {|song|
      if song.name == name
        return song
      end
    }
    newSong = Song.new(name)
    #newSong.artist = artist
    #Artist.add_song(self)
  end

  def self.new_by_filename(filename)
    puts filename
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song

  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end

end

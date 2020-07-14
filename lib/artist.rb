class Artist
  attr_accessor :name

  @@all = []
  #@@all_songs = []


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
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    @@all.each {|artist|
      if artist.name == name
        return artist
      end
    }
    Artist.new(name)
  end

  def print_songs
    @songs.each {|song|
      puts song.name
    }
  end

end

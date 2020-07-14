class Artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    artist = @@all.detect{|artist| artist.name == name}

    if artist == nil
      artist = Artist.new(name)
      @@all << artist
      artist
    else
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.title
    end
  end
end

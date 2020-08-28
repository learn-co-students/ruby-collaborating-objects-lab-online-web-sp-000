class Artist

  attr_accessor :name, :songs
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
    Song.all.select do | song |
      song.artist == self
    end
  end

  def self.find_or_create_by_name(name)
    @found = false
    @@all.each do |artist|
      if artist.name == name
        return artist
        @found = true
      else
      end
    end
    if @found == false
      artist = Artist.new(name)
      return artist
    else
    end
  end

  def print_songs
    Song.all.each do | song |
      if song.artist == self
        puts song.name
      else
      end
    end
  end

  def name
    @name
  end
end

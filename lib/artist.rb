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
    #@@all << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def print_songs
    Song.all.each do |song|
      if song.artist == self
        puts song.name
      end
    end
  end

  def self.find_or_create_by_name(musician)
    self.all.find {|artiste| artiste.name == musician} || Artist.new(musician)
  end

end

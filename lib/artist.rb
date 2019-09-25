class Artist

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    if Artist.all.length == 0
      Artist.new(name)
    else
      Artist.all.each do |artist|
        if artist.name == name
          return artist
        else
          return Artist.new(name)
        end
      end
    end
  end

  def print_songs
    songs.select do |song|
      puts song.name
    end
  end

end

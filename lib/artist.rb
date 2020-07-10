class Artist
attr_accessor :name

@@all = []

  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def songs
    Song.all.filter{|song| song.artist == self}
  end

  def add_song(this_song)
     this_song.artist = self
     songs << this_song
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    !artist ? Artist.new(name) : artist
  end

  def print_songs
    songs.map {|song| puts song.name}
  end

end

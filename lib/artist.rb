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
    Song.all.select {|song| song.artist == self}
  end

  def add_song (song)
    song.artist = self
  end

  def self.find_or_create_by_name (artist_name)
    found = false
    found_artist_obj = nil
    self.all.each do |artist|
      if artist.name = artist_name
        found = true
        found_artist_obj = artist
      end
    end
    if found == true
      found_artist_obj
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end

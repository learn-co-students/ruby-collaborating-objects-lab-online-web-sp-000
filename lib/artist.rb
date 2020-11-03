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
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
      artist_match_arr = self.all.select {|item| item.name == name}
      if(artist_match_arr.size == 0)
        Artist.new(name);
      else
        artist_match_arr[0]
      end
  end

  def print_songs
    all_songs = self.songs
    all_songs.each do |song|
      puts song.name + "\n"
    end
  end

end

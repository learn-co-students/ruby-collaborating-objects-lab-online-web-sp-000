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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def self.find_or_create_by_name(artist_name)
    if !@@all.empty?
      selected_artist = @@all.select do |artist|
        artist.name == artist_name
      end
      selected_artist.first
    else
      self.new(artist_name)
    end
  end

  def print_songs
    song_list = Song.all.select { |song| song.artist == self }
    song_list.map do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end
end

class Artist
  attr_accessor :name
  @@all = []
  @@all_names = []

  def initialize(name)
    @name = name
    @@all << self unless @@all_names.include?(name)
  end

  def self.all
    @@all
  end

  def return_array_of_all_names
    @@all_names == self.all.collect { |artist| artist.name }
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.create_by_name(name)
    new_artist = Artist.new(name)
    new_artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def print_songs
    songs.select do |song|
      title = song.name
      puts "#{title}"
    end
  end

end

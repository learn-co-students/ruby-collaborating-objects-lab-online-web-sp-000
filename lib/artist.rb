class Artist

  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
  end

   def self.all
     @@all
   end

  def add_song(song)
    song.artist = self
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name }
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    songs.each {|songs| puts songs.name }
  end


end

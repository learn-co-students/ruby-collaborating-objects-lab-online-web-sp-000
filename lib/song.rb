require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(song)
    @name = song
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def initialize(name)
    @name = name
  end

  def artist
    self.artist.name
  end

end

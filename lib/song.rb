require "pry"
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(name)
    @artist = name
    name.songs << self
  end
  def artist
    @artist
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end

  def self.all
    @@all
  end
end

require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    if @@all.find {|value| value.name == name}
      @@all.find {|v| v.name == name}
    else
      self.new(name)
    end

    # if @@all.include?(name)
    #   self.name
    # else
    #   self.new(name)
    # end
  end

end

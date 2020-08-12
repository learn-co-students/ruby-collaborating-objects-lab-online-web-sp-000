require 'pry'

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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
    # binding.pry
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist.name == name}
      @@all.find {|artist| artist.name == name}
    else
      self.new(name)
    end

  end

  def print_songs
    self.songs.each{|song| puts "#{song.name}"}
    # puts "#{self.songs}"


    # puts "#{self.songs.collect{|song| song.name = self}}"
  end

end

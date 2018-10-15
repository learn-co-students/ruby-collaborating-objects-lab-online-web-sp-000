require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    # binding.pry
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
     songs.each {|song| puts song.title}
   end

end

# responsible for either creating the artist
# (if the artist doesn't exist in our program yet)
#  or finding the instance of that artist
# (if the artist does exist).
require 'pry'
class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @@all << self
    @songs = []
  end

  def self.find_or_create_by_name(name)
  # This class method should take the name that is passed in (remember,
  # it will be a string), and do one of two things. Find the artist instance
  #   that has that name or create one if it doesn't exist. Either way, the return
  #   value of the method will be an instance of an artist with the name
  #   attribute filled out.
  self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end
  end

  def self.create_by_name(name)
    artist = self.new(name)

  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self
  end

  def print_songs
   @songs.each {|s| puts s.name }
  end


  def self.all
    @@all
  end

end

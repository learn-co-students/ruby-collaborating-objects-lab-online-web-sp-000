require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if Artist.all.length == 0
      artist = Artist.new(name)
      return artist
    else
      Artist.all.each do |artist|
        if artist.name == name
          return artist
        else
          new_artist = Artist.new(name)
          return new_artist
        end
      end
    end    
  end



  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

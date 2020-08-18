require 'pry'

class Artist

  @@allArtists = []

  def initialize(name)
    @name = name
    @@allArtists << self
    @songs = []
  end

  def name=(input)
    @name = input
  end

  def name
    @name
  end

  def add_song(songObject)
    @songs << songObject
    if (songObject.artist != self)
      songObject.artist=(self)
    end
  end

  def songs
    @songs
  end

  def self.all
    @@allArtists.uniq
  end

  def print_songs
    rArray = []
    @songs.each do | selectedSong |
      rArray << selectedSong.name
    end
    return rArray
  end

  def self.find_or_create_by_name(inputName)
    @@allArtists.each do | selectedArtist |
      if (selectedArtist.name == inputName)
        return selectedArtist
      end
    end
    newArtist = Artist.new(inputName)
    return newArtist
  end

end

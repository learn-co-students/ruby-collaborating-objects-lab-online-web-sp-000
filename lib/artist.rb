require 'pry'

class Artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
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
    @@all.uniq
  end

  def print_songs
    @songs.each do | selectedSong |
      puts selectedSong.name
    end
  end

  def self.find_or_create_by_name(inputName)
    @@all.each do | selectedArtist |
      if (selectedArtist.name == inputName)
        return selectedArtist
      end
    end
    newArtist = Artist.new(inputName)
    return newArtist
  end

end

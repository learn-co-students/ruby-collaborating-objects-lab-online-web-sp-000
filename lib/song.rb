require 'pry'

class Song

  @@all = []

  def initialize(inputName)
    @name = inputName
    @@all << self
  end

  def name=(inputName)
    @name = inputName
  end

  def name
    @name
  end

  def artist=(inputArtist)
    @artist = inputArtist
    if !(@artist.songs.include?(self))
      @artist.add_song(self)
    end
  end

  def artist
    @artist
  end

  def artist_name=(inputName)
    Artist.all.each do | selectedArtist |
      if (inputName == selectedArtist.name)
        @artist = selectedArtist
        return
      end
    end
    newArtist = Artist.new(inputName)
    self.artist=(newArtist)
  end

  def artist_name
    @artist.name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(inputFile)
    inputFile = inputFile.split(" - ")
    songName = inputFile[1]
    newSong = Song.new(songName)
    newSong.artist_name=(inputFile[0])
    #binding.pry
    return newSong
  end

end

require 'pry'

class Song

  @@allSongs = []

  def initialize(inputName)
    @name = inputName
    @@allSongs << self
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
    self.artist=(inputName)
  end

  def artist_name
    @artist.name
  end

  def self.all
    @@allSongs
  end

  def self.new_by_filename(inputFile)
    inputFile = inputFile.split(" - ")
    songName = inputFile[1]
    newSong = Song.new(songName)
    Artist.all.each do | selectedArtist |
      if (selectedArtist.name == inputFile[0])
        newSong.artist=(selectedArtist)
      end
    end
    return newSong
  end

end

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def addArtist(artName)
    self.artist = Artist.new(artName)
    self.artist.save
    self.artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    songArr = file_name.split(" - ")
    song.name = songArr[1]
    song.addArtist(songArr[0])
    song
  end
end

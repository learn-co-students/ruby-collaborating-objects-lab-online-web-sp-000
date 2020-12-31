class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
   @name = name
   @songs = []
   @@all << self
 end

 def self.new_by_filename(file_name)
  artist, song = file_name.split(" - ")
  new_song = self.new(song)
  new_song.artist_name = artist
  new_song.artist.add_song(song)
  new_song
end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
      new_song.artist_name = artist
      new_song.save
    end
  end

  def self.all
    @@all
  end

  def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
   end

  def save
    @@all << self

  end
end

require 'pry'
class Song
  attr_accessor :name, :genra, :artist
  @@all = []
  def initialize (name)
    @name = name
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist_name = artist
    song
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end

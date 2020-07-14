require 'pry'
class Artist
  attr_accessor :name, :songs, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

   def self.all
     @@all
   end

   def self.find(name)
     self.all.find {|artist| artist.name == name}
   end

   def self.create(name)
     artist_name = Artist.new(name)
     artist_name.save
     artist_name
   end

   def self.find_or_create_by_name(name)
     if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
   end

   def print_songs
     puts self.songs.collect {|songs| songs.name}
   end

end

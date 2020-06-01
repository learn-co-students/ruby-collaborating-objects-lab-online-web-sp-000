require "pry"
class Song
  @@all=[]
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

#self.new(song_name).artist.name=artist_from_filename
  def self.new_by_filename(file_name)
    song=self.new(file_name.split("-")[1].strip)
    song.artist_name=file_name.split("-")[0].strip
    song

  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end



  end

require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_info = filename.split(" - ")
    song = Song.new(filename_info[1])
    @artist = filename_info[0]
    # @name = filename_info[1]
    @genre = filename_info[2].split(".")[0]
    return song
  end

  def artist_name=(artist)

  end

end

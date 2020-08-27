require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist_name=(artist)
    # binding.pry
    if Artist.all.empty?
      self.artist = Artist.new(artist)
    else
      Artist.all.each do |a|
        # binding.pry
        if a.name == artist
          self.artist = a
        elsif self.artist.nil?
          self.artist = Artist.new(artist)
        end
      end
    # if self.artist.nil?
    #   self.artist = Artist.new(artist)
    # else
    #   self.artist == artist
    end
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    file_song = filename.split(" - ")[1]
    file_artist = filename.split(" - ")[0]
    # binding.pry
    song = self.new(file_song)
    song.artist = Artist.new(file_artist)
    song
    # song.artist = filename.split(" - ")[0]
  end



end

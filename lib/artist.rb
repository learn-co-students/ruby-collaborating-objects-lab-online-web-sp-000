require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def print_songs
    songs.each do |song| puts "#{song.name}" end
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = self.all.find {|artist| artist.name == artist_name }
    if artist_found
      artist_found
    else
      new_artist = Artist.new(artist_name)
    end
  end
  
end












#
# class Artist
#   attr_accessor :name
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(song)
#     song.artist = self
#   end
#
#   def songs
#     Song.all.find_all do |song|
#       song.artist == self
#     end
#   end
#
#   def self.find_or_create_by_name(artist_name)
#     if Artist.all.find { |artist| artist.name == artist_name }
#       return Artist.all.find { |artist| artist.name == artist_name }
#       else
#         Artist.new(artist_name)
#     end
#   end
#
#   def print_songs
#     Artist.all.each do |artist|
#       if artist == self
#         artist.songs.each do |song|
#           puts "#{song.name}"
#         end
#       end
#     end
#   end
#
# end

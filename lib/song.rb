require 'pry'
# require_relative "../lib/artist.rb"
# require_relative "../lib/mp3_importer.rb"

class Song

  attr_accessor :name, :artist

  # @@all = []
 
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file_split_array = file.split(" - ")
    song = self.new(file_split_array[1])
    song_artist = Artist.find_or_create_by_name(file_split_array[0])
    # binding.pry
    song.artist = song_artist
    song_artist.add_song(song)
    song
    # binding.pry
  end

  

# binding.pry
end
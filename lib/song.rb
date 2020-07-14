require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file_name)
    # puts file_name
    file_name_parts = file_name.split(" - ")
    # binding.pry
    new_song = self.new(file_name_parts[1])
    new_song.artist = Artist.find_or_create_by_name(file_name_parts[0])
    new_song.artist.add_song(new_song)
    new_song.artist.save
    new_song
  end


end

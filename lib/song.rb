class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name 
  end 

  def self.new_by_filename(input)
    filename = input.split(" - ")
    found_artist = Artist.find_or_create_by_name(filename[0])
    filename[1] = Song.new(filename[1])
    filename[1].artist = found_artist
    found_artist.songs << filename[1].name
    filename[1]
  end 
  
end 
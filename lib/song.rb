class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(song)
    # binding.pry
    @name = song
    @@all << self
  end

  def self.new_by_filename(file_name)
    # binding.pry
    song = self.new(file_name.split(" - ")[1])
    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    artist.add_song(song)
    # binding.pry
    song
  end
end

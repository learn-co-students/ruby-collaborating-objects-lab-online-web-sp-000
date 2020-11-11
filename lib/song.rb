class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#"Real Estate - Green Aisles - country.mp3"
# "Real Estate - Green Aisles - country.mp3".split(" - ")
#  => ["Real Estate", "Green Aisles", "country.mp3"]
# file_array[0] = artist
# file_array[1] = song_name
# file_array[3] = genre--will need to remove .mp3

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = Song.new(file_array[1])
    new_artist = new_song.artist_name=(file_array[0])
    new_song
  end

  def artist_name=(artist_name)
    artist_object = Artist.find_or_create_by_name(artist_name)
    self.artist = artist_object
  end

end

#test bit
# class Person
#   attr_accessor :name
#  @@all = []
#   def initialize(name)
#    @name = name
#    @@all << self
#    end
#    def self.all
#     @@all
#   end
#   end

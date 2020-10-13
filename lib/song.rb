class Song
  attr_accessor :name, :artist, :artist_name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
   split_name = filename.split(" - ")
  # binding.pry
   song = self.new(split_name[1])
   artist = Artist.find_or_create_by_name(split_name[0])
   song.artist = artist
   artist.add_song(song)
   song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end




end #end of class Song


# # akon = Artist.new("Akon")
# # akon.add_song(freedom)
# freedom.artist

class Song
  attr_accessor :name, :artist
  @@all = [] #store all songs here

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name) #setter method
    @name = name
  end

  def artist=(artist) #setter method
    @artist = artist
  end

  def self.all
    @@all
  end

  def all
    @@all
  end

  def self.new_by_filename(file_name)
    parse = file_name.split(" - ")
    song_name = parse[1] #name of song
    new_song = self.new(song_name)  #Song.new(name)
    new_song.artist_name = parse[0] #name of artist

    new_song #new song instance
  end

  def artist_name=(name) #name = artist's name
    self.artist = Artist.find_or_create_by_name(name) #returns an instance of artist
    artist.add_song(self)

  end



end

class Song

  attr_accessor :artist, :name

  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    a = filename.chomp(".mp3").split(" - ")
    song_object = Song.new(a[1])
    song_object.artist_name = a[0]
    song_object
  end

  def artist_name= (artist_string)
    self.artist = Artist.find_or_create_by_name(artist_string)
  end

end






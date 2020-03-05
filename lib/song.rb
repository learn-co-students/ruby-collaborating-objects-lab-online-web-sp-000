class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(file_name)
    data = file_name.chomp(".mp3").split(" - ")
    song = self.new(data[1])
    song.artist_name = data[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.all
    @@all
  end

end

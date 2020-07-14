class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file)
    holder = file.delete_suffix(".mp3").split(" - ")
    song = Song.new(holder[1])
    song.artist_name = holder[0]
    song
  end
end

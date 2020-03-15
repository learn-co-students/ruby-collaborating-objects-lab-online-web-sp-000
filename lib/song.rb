class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.new_by_filename(file)
    song_data = file.delete_suffix(".mp3").split(" - ")
    artist = Artist.new(song_data[0])
    song_name = song_data[1]
    genre = song_data[2]
    new_song = new(song_name)
    new_song.artist = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end

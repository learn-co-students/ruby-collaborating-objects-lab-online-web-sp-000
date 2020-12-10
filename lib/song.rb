class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  #Michael Jackson - Black or White - pop.mp3
  def self.new_by_filename(filename)
    song_artist = filename.split(" - ")[0]
    song_title = filename.split(" - ")[1]
    self.new(song_title)

    new_song = self.all.find{|song_instance| song_instance.name == song_title}
    new_song.artist_name = song_artist
    artist = Artist.find_or_create_by_name(song_artist)
    artist.songs << new_song
    new_song
  end

  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    self.artist = new_artist
  end
end

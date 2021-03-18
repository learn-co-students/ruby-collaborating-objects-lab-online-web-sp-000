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

   def self.new_by_filename(filename)
    file_song = filename.split(" - ")[1]
    file_artist = filename.split(" - ")[0]

     new_song = Song.new(file_song)
     new_song.artist_name = file_artist
     new_song
   end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

end
# learn spec/song_spec.rb

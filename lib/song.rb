class Song
attr_accessor :name, :artist, :song
@@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def artist=(artist)
  @artist = artist
  artist.add_song(self) unless artist.songs.include?(self)
end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
#binding.pry
  song = Song.new(filename.split(" - ")[1])
  song.artist_name=(filename.split(" - ")[0])
  song
end

    def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
   artist.add_song(self)
    end


end

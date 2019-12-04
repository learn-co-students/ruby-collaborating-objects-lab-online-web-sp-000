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
  #file = Artist.new(filename.split(" - ")[1])
  artist = Song.new(filename.split(" - ")[1])


  #filename.song = self
end

    def artist_name(artist_name)
      binding.pry
      @@all.find {|n| n == self.artist_name} || Song.new(artist_name)


    end

end

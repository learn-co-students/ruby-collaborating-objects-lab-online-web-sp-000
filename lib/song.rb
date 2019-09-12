class Song
  attr_accessor :name, :artist

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all(name)
    song.all
  end

  def self.new_by_filename (songdata)
    song = self.new
    song.title = songdata.split(" - ")[1]
    #song.artist = self
    song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end



end

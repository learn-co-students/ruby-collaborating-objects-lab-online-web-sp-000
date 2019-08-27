class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(artist_name)
    Artist.all.select do |artist|
      if artist.name == artist_name
        self.artist = artist
      else
        new_artist = Artist.new(artist_name)
        new_artist = self.artist
      end
    end
  end

  def new_by_filename
  end

end

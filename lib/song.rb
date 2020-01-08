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

  # parse a filename to find the song name and artist name
  # then, create a new song instance using the string we gathered from the filename
  # also associate that new song with an artist. Use the artist attribute accessor to assign this
  # return the new song instance
  def self.new_by_filename

  end

  def artist_name

  end

end

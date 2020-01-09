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

  # return the new song instance
  # file_name = 'Michael Jackson - Black or White - pop.mp3'
  def self.new_by_filename(file_name)
    # parse a filename to find the song name and artist name
    title = file_name.split(" - ")[1]
    musician = file_name.split(" - ")[0]
    # create a new song instance using the string we gathered from the filename
      # self.new(title)
    # associate that new song with an artist. Use the artist attribute accessor to assign this
    @name = self.new(title)
  end

  # accepts an artist's name,
  # finds or creates an Artist instance and assigns it to the Song's artist attribute
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end

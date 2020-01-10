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


  # file_name = 'Michael Jackson - Black or White - pop.mp3'
  def self.new_by_filename(file_name)
    # parse a filename to find the song name and artist name
    title = file_name.split(" - ")[1]
    musician = file_name.split(" - ")[0]
    # create a new song instance using the string we gathered from the filename
    # song_title is my new song instance
      song_title = self.new(title)
    # associate that new song with an artist. Use the artist attribute accessor to assign this
      song_title.artist_name = musician
    # return the new song instance
      song_title

  end

  # accepts an artist's name
  def artist_name=(name)
    # finds or creates an Artist instance and assigns it to the Song's artist attribute
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end

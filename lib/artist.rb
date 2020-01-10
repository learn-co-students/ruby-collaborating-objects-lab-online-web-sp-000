class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # instance method receives an instance of a Song and associates it belongs to this Artist instance.
  def add_song(song)
    song.artist = Song.new(song)
  end

  # class method should return all Artist instances.
  def self.all
    @@all
  end

  # This instance method returns an Array of all songs that belong to this Artist instance.
  # This method should get all existing Song instances from Song and select only the ones that are associated with this Artist instance.
  def songs
    Song.all.select { |artist| artist == "Michael Jackson"}
  end

  # This class method should take the name that is passed in (a string), and do one of two things.
  # Find the artist instance that has that name or create one if it doesn't exist.
  # Either way, the return value of the method will be an instance of an artist with the name attribute filled out.
  def self.find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  # instance methods outputs the names of all songs associated with this Artist instance.
  def print_songs
    self.artist
  end

end

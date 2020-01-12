class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  @all = []

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def self.all
    @@all
  end


  def new_by_filename(file_name)
    file_name = Song.new(file_name)

  end

end

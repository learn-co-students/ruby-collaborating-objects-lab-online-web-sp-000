class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = Artist.new(artist)
  end

  def new_by_filename

  end

end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    if artist_exists?(artist_name)
    else
      @artist = Artist.new(artist)
    end
  end

  def artist_exists?(artist_name)
    #I think the return value on this is wrong...
    Artist.all.collect do |artist|
      if artist.name == artist_name
        @artist = artist
      else
        false
      end
    end
  end

  def new_by_filename

  end

end

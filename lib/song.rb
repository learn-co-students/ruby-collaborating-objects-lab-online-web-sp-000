class Song 
  attr_accessor :name, :genre
  @@all = []
  @artist
  
  def initialize(title)
    @name = title
    @@all << self
  end
  
  def artist=(name)
    @artist = name
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    p(@artist)
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist
      return @artist.name
    else
      return nil 
    end
  end
  
  def self.new_by_filename(filename)
    song = filename.split(" - ")
    artist = Artist.new(song[0])
    new_song = artist.add_song_by_name(song[1])
    
    return new_song
  end
  
end
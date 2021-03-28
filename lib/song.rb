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

  def new_by_filename(name)
    
  end
  
  def artist_name=(name)
    the_ artist = Artist.find_or_create_by_name(name)
    @artist = the_artist
  end
end

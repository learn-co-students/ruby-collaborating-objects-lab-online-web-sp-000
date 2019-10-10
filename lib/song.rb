class Song
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
     end
  
  def self.all
    @@all
  end

  def save
     @@all << self
  end
  
  def self.new_by_filename(filename)
    #parse filename to find song and artist
    #create new song instance using string from filename
    #associate new song with artist
    #return new song instance
  
    name = filename.split(" - ")[1]
    song = self.new(name)
    artist = filename.split(" - ")[0]
    song.artist = artist
    song
  end
  
  def artist_name=(name)
    
    #finds Artist instance and assigns it to Song's artist attribute
    #if Artist doesn't exist, create Artist instance and assign it to song's artist attribute
  end
  
end
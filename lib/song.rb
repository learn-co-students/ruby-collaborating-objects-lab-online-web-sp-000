class Song 
  
  attr_accessor :artist, :name, :filename
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    # binding.pry
  end 
  
  def self.all 
    @@all
  end 
  
# kiki = Song.new("In My Feelings", "hip-hop")
# drake = Artist.new("Drake")
# kiki.artist = drake
# kiki.artist.name
  
  def self.new_by_filename(filename)
    array = filename.split(/\ - |.mp3/)
    newsong = self.new(array[1])
    newsong.artist = Artist.find_or_create_by_name(array[0])
    newsong
  end 
  
  def artist_name=(name)
    self.artist =Artist.find_or_create_by_name(name)
    # binding.pry
  end


end
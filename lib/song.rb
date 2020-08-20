class Song
  attr_accessor :name, :genre, :artist
  @@all  = [] #CLASS variable, will expose it for Artist class to use


  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
    #save is an instance method, so self is the song instance
    #push the song into the all array
  end

  def self.new_by_filename(filename) #class method
    filename.slice! ".mp3"
    #returns the trashed piece and nil if nothing was cut. the original filename is forever modified
    artistandsongandgenre = filename.split(" - ") #ex: [ "taylor swift", "blank space"]
    #make new song instnace but no saving
    newsong = self.new(artistandsongandgenre[1])
    newsong.artist_name= (artistandsongandgenre[0])
    newsong


  end



  def artist_name=(name)
    #This is different!
    #its a method to assign the artist name, not get the artist name
    theartist = Artist.find_or_create_by_name(name)
    self.artist = theartist
    #dont need to use artist class's add song method because the artist class has a songs method that find that artist's songs by grabbing the @@all array of Song class
  end


  def self.all
    @@all
  end




end

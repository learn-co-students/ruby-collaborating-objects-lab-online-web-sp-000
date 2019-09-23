
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all ## contains all Artist Objects, Artit Objects have a name. ArtistObject.name = "Name String"
    @@all
  end
  
  def songs
    Song.all.select {|i| i.artist == self}
  end
  
  def add_song(newSongObject)
    newSongObject.artist = self
  end
  
  def self.find_or_create_by_name(artistName)
    #check if artist exists through the string name given in the arg. 
    #self.all contains Artist objects, each Artist Object initializes with a name
    #for all ArtistObjects array, if ArtistObjects.name == argument given return ArtistObject
    #if artist Object doesnt exist, make a new artist Object
    artistObject = self.all.detect {|i| i.name = artistName}
    if artistObject == nil
      newArtistObject = Artist.new(artistName)
      newArtistObject
    else
      artistObject
    end
  end
  
  def print_songs
    self.songs.select {|i| puts i.name}
  end

end
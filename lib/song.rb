class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self   
  end 
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end 
  def self.all 
    @@all 
  end 
  def self.new_by_filename(filename)
    splits = filename.split(" - ")
    name = splits[1]
    artistName = splits[0]
    newSong = Song.new(name)
    newSong.artist_name=(artistName)
    newSong 
  end 
end 

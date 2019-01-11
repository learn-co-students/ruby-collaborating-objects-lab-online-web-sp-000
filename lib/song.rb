class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
    @artist = nil 
  end 
  
  def self.new_by_filename(file_name)
    temp = file_name.split('-')
    
    song_name = temp[1].strip
    artist_name = temp[0].strip
    
    new_song = Song.new(song_name)
    
    # attempting to interact with Artist object changes
    # Song object, breaking the tests 
    
    
    #artist = Artist.find_or_create_by_name(artist_name)
    #new_song.artist = artist
    
    
  end
  
  #def artist(artist_name)
   # Artist.find_or_create_by_name(artist_name)
  #end
  
  #def artist=(artist)
    #self.artist = artist
  #end
end

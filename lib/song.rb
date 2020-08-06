class Song 
  
  attr_accessor :name, :artist
  
  @@all = [] # provides array of all Song instances
  
  def initialize(name)
    @name = name
    @@all << self # adds each new instance to the @@all array
  end
  
  def self.all # provides access to all Song instances
    @@all
  end
  
  def self.new_by_filename(filename) 
      # accepts filename data from MP3Importer
    split_name = filename.split(" - ") 
      # creates array of parts of filename
    song = self.new(split_name[1]) 
      # creates new song with appropriate name
    artist = Artist.find_or_create_by_name(split_name[0]) 
      # finds or creates new Artist with given data
    song.artist = artist 
      # associates Artist object with new song
    artist.add_song(song) 
      # ensures that the Artist object knows about the Song object
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) 
      # uses self to identify the Song instance and associates an Artist with the song using the #find_or_create_by_name method from the Artist class
  end 

end
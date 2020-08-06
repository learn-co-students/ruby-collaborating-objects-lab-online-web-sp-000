class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = [] # each Artist instance is responsible for remembering its own songs
    @@all << self # saves each Artist instance into an array @@all
  end
  
  def self.all # allows access to @@all array
    @@all 
  end 
  
  def add_song(song) # adds song instances to each Artist instance's song array
    @songs << song
  end
 
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name } || Artist.new(name)
      # checks the class variable @@all to see if an artist already exists; if not, it creates one
  end
  
  def print_songs 
    @songs.each { |song| puts song.name }
      # uses the Artist instance's array @songs, iterates over it and "puts" each song's @name variable
  end 
  
end 
class Artist
  attr_accessor :name, :songs                  #name/song attributes
  @@all = []                                 #Class var set to an array

  def initialize(name)
    @name = name                               #instance var set at instantiation
    @songs = []
  end

  def songs                                  #instance method in which returns are @song variable
    return @songs
  end

  def add_song(song)                        #instance method, takes in argument songs
    @songs << song                          #push (add) each song to our @songs variable
  end
  #self here is inside of an instance method. thus it refers to
  def save                                     #adds any instance of our artists to @@all collection of artists
    @@all << self                             #push any instance of itself into our collection of artists
  end                                         #thus saving them
  #class method, self would refer to the class
  def self.all                                 #save needed a class method called all
    return @@all                                #to read our collection of artists instances
  end
  #class method: create an artist. queryng artist class variable @@all that returns all artist instances
  def self.find_or_create_by_name(name)                         #creates an artist by name maining uniqueness of objects by name property
    self.all.find {|artist| artist.name == name} || self.new(name).save
    #self.find(name) ? self.find(name) : self.create(name)
  end
  
  def self.find(name)
      self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
      self.new(name).tap {|artist| artist.save}
  end
    #@@all.find {|artist| artist == name ? name : Artist.new(name)} Ternary Operator ? is true (artist present) : if false create new one by Artist and .new method

  def print_songs   #Where do we store all of our instances of our artists songs? @songs
    @songs.each do |song|         #print each element inside our list of songs (name only)
      puts song.name              #name is an attribute, its scope is the whole class song.name prints the name only
    end
  end
end

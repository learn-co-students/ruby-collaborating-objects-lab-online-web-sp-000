class Artist 
  attr_accessor :songs, :name
   
   @@all = []
   
  def initialize(name)
    @name = name 
    @songs = [] #artist has many songs 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  def add_song(song)
    @songs << song 
  end 
  
  def self.find_or_create_by_name(name)
    found = @@all.find {|artist| artist.name == name}
    if found 
       found 
    else 
      new_artist = self.new(name)
      new_artist.save 
      new_artist
    end 
  end 
  
  def print_songs 
    @songs.each do |song|
      puts "#{song.name}"
    end 
  end 
  
  
end 
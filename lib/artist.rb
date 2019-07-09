class Artist 
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
   @songs << song unless @songs.include?(song)
   song.artist = self unless song.artist == self
   
  end 
 
  def save
   @@all.push(self)
   self
  end 
  
 def self.all
   @@all
 end
  
    def self.find_or_create_by_name(name) 
    if self.all.detect {|artist| artist.name == name} == nil
        artist = Artist.new(name)
        artist.save
    elsif
        artist = self.all.detect {|a| a.name == name}
    else
        self.new(name).save
    end
    artist
  end 
    
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
end
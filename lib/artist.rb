class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end 
  
  def add_song(new_song) 
    new_song.artist = self 
  end
    
  def self.all 
    return @@all 
  end
  
  def songs 
    return Song.all.select{|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
    out = @@all.find{|x| x.name == name}
    if(out == nil)
      out = new(name)
    end 
    return out 
  end
  
  def print_songs 
    songs.each do |song|
      puts song.name 
    end
  end
end
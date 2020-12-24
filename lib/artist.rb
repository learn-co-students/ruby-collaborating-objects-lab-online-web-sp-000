class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    
    @name = name
    save
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def add_song(song)
    
    song.artist = self
    song
    
  end
  
  def songs 
    
    Song.all.select{|song| song.name if (song.artist == self)}
    
  end
  
  def self.find_or_create_by_name(artist_name)
    
    if @@all.collect{|artist|artist.name}.include?(artist_name)
      return @@all.find{|artist|artist.name == artist_name}
    else
      Artist.new(artist_name)
    end
    
  end
  
  def print_songs
    
    songs().each {|song|puts song.name}
    
  end
  
  #private
  
  def save
    
    @@all << self
    
  end
  
end
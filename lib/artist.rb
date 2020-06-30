class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    if @@all.find {|artist| artist.name == name} == nil
      self.new(name)
    else
      @@all.find {|names| names.name == name}
    end
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
  
      
        

end
    
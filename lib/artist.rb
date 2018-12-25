class Artist 
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name =  name
    @songs = []
  end
  
  def self.all 
    @@all
    end
    
  
  def add_song(song)
    self.songs << song
  end
  
   def save
    @@all += [self]
  end

  def Artist.find_or_create_by_name(name)
   found = []
    @@all.each do |artist|
      if artist.name == name 
        found << artist
      end 
    end 
    if found[0] != nil
      return found[0]
    else
    new_artist = Artist.new(name)
    new_artist.save
    return new_artist
  end
  end
    def print_songs
      @songs.each do |song|
        puts song.name 
      end
    end
end
class Artist
  
  attr_accessor :name
  
  @@all = []
  
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
  
  def add_song(song)
    song.artist = self   
    # how can we call this?  what is the scope?
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  

  def self.find_or_create_by_name(name)
    find_artist = self.all.find do |artist_name|
      artist_name.name == name
    end
   
    if find_artist
      return find_artist
    else
      new_artist = self.new(name)
      # new_artist.save
      new_artist
    end
  end
  
  
  
  def print_songs
    songs.select do |song|
      print song.name + "\n" 
    end
  end
end

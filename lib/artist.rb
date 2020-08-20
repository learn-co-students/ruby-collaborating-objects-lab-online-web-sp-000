class Artist
  attr_accessor :name
  @@all = [] #this is new. we have an artist all and a song all

  def self.all
    @@all
  end


  def initialize(name)
  @name = name
  save
end

  def save
    @@all << self #self = instance here.
  end

def add_song(song)
  song.artist = self
  #we take the song's instance method #artist (buldt thru attr_accessor) to set the artist to self
  #this is enough that when we we search the artist's songs we find this new song.
  #when song is created, it's already saved to the @@all array
end

def songs
    Song.all.select do | song |
      song.artist == self
    end
    #return array of songs of the artist. self = the artist instance
  end

def self.find_or_create_by_name(name)
  resultoffind = @@all.find do | artist |
    artist.name == name
  end

  if resultoffind #if not nil
    resultoffind
  else
    self.new(name) #aka Artist.new()
  end

end


def print_songs
    thesongs = Song.all.select do | song |
      song.artist == self
    end
    #return array of songs of the artist. self = the artist instance
    #now we need to print it out
    thesongs.each do | songinstance |
      puts songinstance.name
    end
  end




end

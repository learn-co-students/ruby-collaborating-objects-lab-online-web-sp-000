class Artist
  attr_accessor :name, :songs

  @@all = []
def initialize(name)
  @name = name
  @songs = []
  save
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name(name)
   the_artist = self.all.detect { |artist| artist.name == name }
     if the_artist
       the_artist
     else
       self.new(name)
     end
end



  def add_song(song)
    @songs << song
  end

  def songs
  @songs
  end


def print_songs
  @songs.select { |song| puts song.name }
end

end

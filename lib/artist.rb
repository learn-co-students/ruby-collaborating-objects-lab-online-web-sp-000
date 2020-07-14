class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
#  initialize with #name
#    accepts a name for the artist (FAILED - 1)
end

def name=(name)
  @name = name
  # sets the artist name
end

def add_song(song)
 @songs << song
end

def save
  @@all << self#  adds the artist instance to the @@all class variable (FAILED - 4)
end

def self.all
  @@all
  end

  def self.find_or_create_by_name(artist_name)
      found_artist = self.all.find {|artist| artist.name == artist_name}
      if found_artist
        found_artist
      else
        new_artist = self.new(artist_name)
        new_artist.save
        new_artist
      end
    end

def print_songs
  @songs.each do |song|
    puts song.name
    end
  end
end

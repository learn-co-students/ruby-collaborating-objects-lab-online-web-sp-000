class Artist
  attr_accessor :songs
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def save 
     duplicate = @@all.find {|artist| self.name == artist.name}
      if duplicate.nil?
        @@all << self
      else
        puts "save method for artist class WE ALREADY HAVE THAT ARTIST"
      end
  end
  
  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    duplicate = @songs.find {|item| item.name == song.name}
      if duplicate.nil?
        @songs << song
      else
        puts "duplicate detected in add_song Can't add a duplicate song"
      end
  end
  
  def songs 
    @songs
  end
  
  def self.find_or_create_by_name (name)
    artist = Artist.all.find {|artist| artist.name == name}
    if artist.nil? 
      new_artist = Artist.new(name)
      new_artist
    else
      artist
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
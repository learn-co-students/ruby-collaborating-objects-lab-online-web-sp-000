class Artist
  attr_accessor :name, :songs
  @@all = [] #for artist, calling self
  def initialize(name)
    @name = name
    @songs = [] #to keep track of songs
  end
  def add_song(song) # takes the argument song
    #keeps track of an artist's songs
    @songs << song
    #song.artist = self
  end
  def save
    # adds the artist instance to the @@all class variable
    @@all << self
  end
  def self.all
    # calls upon self to save artist
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    #finds or creates an artist by name maintaining uniqueness of objects by name property
    # creates new instance of artist if none
    new_artist = self.all.find {|artist| artist.name == artist_name}
    if new_artist
       new_artist
     else
       new_artist =  Artist.new(artist_name)
       new_artist.save
       new_artist
     end
  end

  def print_songs
    # lists all of the artist's songs
    #self.songs.each {|song| puts song.name}
    #self.songs.each {|variable| puts song.name}
    self.songs.each{ |song| puts song.name }
  end
    # artist.print_songs = blahblahblahbla
end

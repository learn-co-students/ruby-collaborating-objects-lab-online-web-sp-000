class Artist
  
  attr_accessor :name, :song
  
  @@all = [ ]
  @@songs = [ ]
  
  def initialize(name)
    @name = name
    @@songs = [ ]
    @@all << self
  end
  
  def self.all
    @@all
  end

  
  def add_song(song)
    @@songs << song
    #keeps track of an artists songs 
    song.artist = self
  end
  
  def songs
    #lists all songs that belong to the artist
    @@songs
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find {|artist| artist.name == artist_name} == nil
      artist = self.new(name)
      artist.name = artist_name
      artist
    else
      @@all.find {|artist| artist.name == artist_name}
    end
  end
  
  
  def print_songs
    #lists all of the artists songs
    song_list = [ ]
    self.songs.select {|songs| song_list << songs.name}
    puts songs_to_print = song_list.join("\n")
  end
  
end
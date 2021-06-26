class Artist 
  attr_accessor :name 
  
  @@all = []
  
    def initialize(name) #accepts a name for the artist
      @name = name #sets the artist name
      @@all << self
    end
    
    def self.all #returns all existing Artist instances
      @@all
    end
    
    def save
      @@all
    end
    
    def add_song(song) #keeps track of an artist's songs
      song.artist = self
    end
    
    def songs # lists all songs that belong to this artist
      Song.all.select {|song| song.artist == self}
    end
    
    def self.find_or_create_by_name(artist_name) #always returns an Artist instance
      found_artist = self.all.find {|artist| artist.name == artist_name}
      #finds or creates an artist by name maintaining uniqueness of objects by name property
     if found_artist
        found_artist
      else #Creates new instance of Artist if none exist
        new_artist = self.new(artist_name)
        new_artist.save
        new_artist
      end
    end
    
    def print_songs #lists all of the artist's songs
      songs.each do |song|
        puts song.name
      end
    end
    
end
require 'pry'
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all.uniq
  end
  
  def songs 
   Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    return new_song
  end
  
  def print_songs
    self.songs.each do |song|
     puts "#{song.name}\n"
    end
    
  end
  
  def self.find_or_create_by_name(name)
    
    @@all.select do |artist|
      
      if artist.name == name
        return artist
      end
    end
    
    new_artist = Artist.new(name)
    @@all << new_artist
    
    return new_artist
  end
end 
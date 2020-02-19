class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.select{|song| song.artist == self }
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    
    find_artists = self.all.select {|artist| artist.name == name}
    if (find_artists.length == 0)
      Artist.new(name)
      
    else
      return find_artists[0]
      
    end
  end

  def print_songs
    self.songs.each do |song| song
      puts song.name
    end
  end
  
end 

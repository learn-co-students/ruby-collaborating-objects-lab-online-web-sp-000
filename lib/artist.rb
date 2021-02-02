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

  def add_song(some_song)
    some_song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
   end
  
  def self.find_or_create_by_name(name)
    test = self.all
    result = test.select {|t| t.name == name}
    if result == []
      new_artist = Artist.new(name)
      new_artist
    else
	    result[0]
    end
  end
  
  def print_songs
    s = self.songs
    s.each {|song| puts "#{song.name}" + "\n"}
  end
end

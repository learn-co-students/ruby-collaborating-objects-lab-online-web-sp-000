class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(some_singing_idiots_name)
    @name = some_singing_idiots_name
    save
  end

  def self.all
    @@all    
  end

  def add_song(probably_a_crappy_song)
    probably_a_crappy_song.artist = self
  end

  def songs
    Song.all.select {|ear_rot| ear_rot.artist == self}
  end

  def self.find_or_create_by_name(stupid_name)
    self.find(stupid_name) ? self.find(stupid_name) : self.new(stupid_name)
  end

  def self.find(moronic_name)
    self.all.find {|singing_idiot| singing_idiot.name == moronic_name }
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|noise_that_makes_you_stupider| puts noise_that_makes_you_stupider.name}
  end
  
end
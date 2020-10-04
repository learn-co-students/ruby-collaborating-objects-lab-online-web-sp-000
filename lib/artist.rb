class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    search = self.all.select {|artist| artist.name == name}
    if search.length == 0
      new_artist = self.new(name)
      new_artist
    else
      self.all.select{|artist| artist.name == name}[0]
    end
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  
  def self.all
    @@all
  end
end
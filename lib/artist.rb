#create artist if they do not exist
# or find instance of artist

class Artist
  attr_accessor :name
  @all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

#  def self.find_or_create_by_name(name)            #simple conditional
#    if self.all.find {|artist| artist.name == name}
#      self.all.find {|artist| artist.name == name}     #don't forget to return
#    else
#      name = self.new(name)
#    end
#  end

#  def self.find_or_create_by_name(name)
#    (self.all.find {|artist| artist.name = name}) || Artist.new(name)
#  end

  def self.find_or_create_by_name(name)           #ternary operator "?:"
    self.all.find{|artist| artist.name == name} ?
    self.all.find{|artist| artist.name == name} :
    self.new(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

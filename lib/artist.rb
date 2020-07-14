class Artist
  attr_accessor :name, :songs
 @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }

  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end


  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def save
    self.class.all << self
  end

  def print_songs
  name_list = self.songs.map {|song| song.name}
  puts name_list
  end

end

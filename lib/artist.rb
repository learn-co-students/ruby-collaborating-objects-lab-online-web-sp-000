class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  # def self.create(name)
  #   artist = self.new(name)
  #   artist.save
  #   artist
  # end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
    end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.new(name)
    end
  end

  def print_songs
    puts @songs.collect {|x| x.name}
  end
end

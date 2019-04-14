class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.exists?(name)
    @@all.any? {|x| x.name==name}
  end

  def self.find_or_create_by_name(name)
    if !exists?(name)
      Artist.new(name)
    end
  end

  def print_songs
    @songs.each {|x| puts x.name}
  end

end

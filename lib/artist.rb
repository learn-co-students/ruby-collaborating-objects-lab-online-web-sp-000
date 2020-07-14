class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def self.find(name)
    @@all.find{|artist| artist if artist.name == name}
  end

  def self.create(name)
    Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    if find(name) == nil then create(name)
    else find(name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

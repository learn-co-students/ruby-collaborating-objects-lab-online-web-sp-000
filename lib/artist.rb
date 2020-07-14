class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    result = nil
    @@all.select do |item|
      if item.name == name
        result = item
      end
    end
    if result == nil
      result = Artist.new(name)
    end
  end

  def print_songs
    @songs.select do |item|
      puts "#{item.name}"
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end

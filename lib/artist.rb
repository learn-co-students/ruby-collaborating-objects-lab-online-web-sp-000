class Artist
  attr_accessor :name, :artist, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
#    song.artist = self
    @songs << song
#    binding.pry
#    @@all << self
  end

  def artist=(name)
    @name = name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    if @@all.length > 0
      @@all.each do |instance|
        if instance.name == name
          return instance
        else
          return nil
        end
      end
    else
      return nil
    end
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
  end

  def self.find_or_create_by_name(artist_name)
    if self.find_by_name(artist_name) == nil
      new_artist = self.create_by_name(artist_name)
      return new_artist
    else
      self.find_by_name(artist_name)
    end
  end

  def print_songs
    @songs.each do |instance|
      print "#{instance.name}\n"
    end
  end

end

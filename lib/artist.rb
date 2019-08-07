class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def find_or_create_by_name
    self.find_by_name(name) || Song.self.create_by_filename(filename)
  end


  end

  def self.find_by_name(name)
    @@.find{ |song| song.name == name}
  end


end

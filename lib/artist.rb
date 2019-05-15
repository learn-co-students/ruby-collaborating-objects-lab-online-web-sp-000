class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(name)

  end

  def save
    @@all << song
  end
end

class Artist

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song
  end

end
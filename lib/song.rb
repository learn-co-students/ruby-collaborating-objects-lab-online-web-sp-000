class Song
  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.new_by_filename(name)
    @songs = Song.new_by_filename(name)
  end


end

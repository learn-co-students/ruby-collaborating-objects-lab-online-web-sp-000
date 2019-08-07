class Song
  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filemname)
    song = self.new
    song.title = filename.split( " - ")[0]
    song
  end

end

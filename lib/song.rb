class Song
    attr_accessor :name, :artist
    @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.new_by_file_name(filename)
    song = self.new
      song.title = filename.split(" - ")[1]
      song
  end

  def artist_name=(name)
    artist.find_or_create_by_name
    

  end
end

class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(file)
    data = file.split(" - ")
    name = data[1].split(".")[0]
    song = Song.new(name)

    song.artist = Artist.find_or_create_by_name(data[0])
    song.artist.songs << song
    song
  end

  def name
    @title
  end

  def name=(name)
    @title = name
  end
end

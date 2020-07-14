class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    files_arr = file.split(" - ")
    song = Song.new(files_arr[1])
    song.artist = Artist.find_or_create_by_name(files_arr[0])
    song
  end
end

class MP3Importer
  attr_reader :path, :name

  def initialize(path)
    @path = path
  end

  def files
    full_filename = Dir[@path+"/*"]
    full_filename.collect {|filename| filename.split("/").last}
    #separate file elements, and return last element containing the desired info
  end

  def import
    self.files.each do |filename|
    #  binding.pry

    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]

    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new_by_filename(filename)

      end
    end

end

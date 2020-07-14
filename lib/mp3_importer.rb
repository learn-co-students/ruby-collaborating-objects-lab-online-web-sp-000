class MP3Importer
  attr_accessor :path, :filenames

  @@filenames = []

  def initialize(path)
    @path = path
  end

  def files
    @@filenames = Dir[@path + "/*.mp3"].collect {
      |file_path| file_path.delete_prefix(@path + "/")
    }
  end

  def import
    @@filenames.each do
      |file| Song.new_by_filename(file)
    end
  end

end

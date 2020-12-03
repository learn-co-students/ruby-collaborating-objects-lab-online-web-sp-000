class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path

  end

  def files
    Dir.chdir(path) do
      Dir["*.mp3"]
    end
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir["./spec/fixtures/**/*.mp3"].map { |f| File.basename(f)}
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end

end

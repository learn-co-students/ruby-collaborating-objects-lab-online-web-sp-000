class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files=Dir.new(@path).grep(/.*\.mp3/)
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

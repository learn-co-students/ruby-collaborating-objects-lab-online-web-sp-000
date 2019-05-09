class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.new(@path).grep(/.*\.mp3/)
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end

end

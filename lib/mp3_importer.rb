class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.select { |file| file.end_with?(".mp3") }
  end

  def import
    self.files.each { |f| Song.new_by_filename(f) }
  end
end

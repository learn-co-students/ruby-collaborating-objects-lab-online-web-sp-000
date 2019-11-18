class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).keep_if { |file| file.end_with?('.mp3') }
  end

  def import
    files.map { |file| Song.new_by_filename(file) }
  end
end
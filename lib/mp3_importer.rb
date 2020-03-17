class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|song| song.end_with?(".mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end
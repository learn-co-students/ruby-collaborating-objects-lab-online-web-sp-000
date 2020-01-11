class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  # loads all the mp3 files in the path directory
  # normalizes the filename to just the mp3 filename with no path
  def files
    # binding.pry
    Dir.entries(@path).reject { |f| File.directory?(f) }
  end

  # imports the files into the library by creating songs from a filename
  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end

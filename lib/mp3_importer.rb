class MP3Importer
  attr_accessor :path

  def initialize(path) #initialize accepts a file path to parse mp3 files from
    @path = path
  end

  def files  #files loads all the mp3 files in the path directory normalizes the filename to just the mp3 filename with no path
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import  #import imports the files into the library by creating songs from a filename
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
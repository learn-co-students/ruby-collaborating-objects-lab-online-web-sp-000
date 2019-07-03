class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path            #initialize accepts a file path to parse mp3 files from
  end
  #loads all the mp3 files in the path directory
  def files
    @file_array = Dir.entries(@path).select{|file| file.include?(".mp3")}
  #normalizes the filename to just the mp3 filename with no path
  end
  #import files into a library by creating (instantiating) new Songs from a filename!
  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end
end

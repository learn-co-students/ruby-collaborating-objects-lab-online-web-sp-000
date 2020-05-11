class MP3Importer
#parses a directory of files and sends the filenames to a song class to create a library of
#music with artists that are unique
attr_accessor :path

  def initialize(path)
    @path = path
  end


  #loads all the mp3 files in the path directory
#normalizes the filename to just the mp3 filename with no path
  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/","")}
  end

#sends us to the Song class which will create the Song instance and Artist instance
  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end

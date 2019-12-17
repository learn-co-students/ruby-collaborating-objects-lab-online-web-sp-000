class MP3Importer
  attr_reader :path
  
#accepts a file path to parse mp3 files from
  def initialize(path)
    @path = path
  end

#loads all the mp3 files in the path directory
   # normalizes the filename to just the mp3 filename with no path
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

#imports the files into the library by creating songs from a filename
  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end  
  
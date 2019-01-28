class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    long_file = Dir[@path+"/*"]
    long_file.collect {|filename| filename.split("/").last}
  end
  
  
  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end
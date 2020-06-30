class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  
  
  def files
    @files_array = Dir.children(@path)
  end
  
  def import 
    files
    @files_array.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
  
  
end   
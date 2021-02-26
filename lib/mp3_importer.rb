class MP3Importer
  attr_accessor :path 
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files = Dir.entries(@path)
    @files.delete_if{|files| files == "." || files == ".."}
  end 
  
  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end 
end 
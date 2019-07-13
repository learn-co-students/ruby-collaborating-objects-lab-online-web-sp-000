require "pry"
class MP3Importer 
  
  attr_accessor :path, :files
  
  
  def initialize(path)
    @path = path 
  end  
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| !file.include?(".mp3")}
  end
  
  def import 
    self.files
    @files.each {|file| Song.new_by_filename(file)}
  end
  

end 


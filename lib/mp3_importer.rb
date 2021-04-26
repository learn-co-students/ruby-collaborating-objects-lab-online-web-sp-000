require "pry"

class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end 
  
  def files
    @files = Dir.entries(@path)
    @files.delete(".")
    @files.delete("..")
    @files
  end 
  
  def import 
    
  end 
  
end 
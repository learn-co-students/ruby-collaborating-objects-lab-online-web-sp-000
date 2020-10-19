require "pry"

class MP3Importer
  
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @files = Dir.children(@path)
  end
  
  def import
    self.files.map{|filename| Song.new_by_filename(filename)}
  end
  
end
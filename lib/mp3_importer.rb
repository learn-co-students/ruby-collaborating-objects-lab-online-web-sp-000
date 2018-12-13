require 'pry'


class MP3Importer 
  attr_accessor :path  
  
  def initialize(path)
    @path = path 
  end
  
  def files
  
    array = Dir[@path + "/*"]
    
    array.collect do |str|
      str.slice! "./spec/fixtures/mp3s/"
      str 
      
    end
    
  end


  def import 
    
    array = self.files 
    
    array.collect do |s|
    Song.new_by_filename
    end
      
    
    
    
  end
  
  
end


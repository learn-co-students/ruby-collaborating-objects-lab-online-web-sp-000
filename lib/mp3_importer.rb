
class MP3Importer
  attr_accessor  :path, :filename 
  
  def initialize(path)
    @path = path 
  end 
  
  
  def files 
    
    Dir.entries(path).select {|f| !File.directory? f}
    
  end 
  
  
  
  def import 
    
    files.each { |file| Song.new_by_filename(file) }
    
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 
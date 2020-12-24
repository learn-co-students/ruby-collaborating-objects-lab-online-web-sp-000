class MP3Importer
  
  attr_accessor :path, :file_names
  
  def initialize(path)
    
    @path = path
    @file_names = files()
    #puts @file_names
  end
  
  def path
    
    @path
    
  end
  
  def files
    
    Dir.glob("#{self.path}/*.mp3").collect{|file| file.split("#{path}/")[1]}
    
  end
  
  def import 
    
    @file_names.each {|file_name|Song.new_by_filename(file_name)}
    
  end
  
end
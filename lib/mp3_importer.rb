class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end
  
  
  
  def files
    Dir.entries(self.path).select {|file| file.include?("mp3")}
  end
  
  def import
    files.each do |filename| filename
      Song.new_by_filename(filename)
    end 
  end
end 

  
  
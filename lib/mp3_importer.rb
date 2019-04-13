class MP3Importer
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
    
  end 
  
  def files
    files_array = Dir.entries(@path)
    @mp3_array = []
    files_array.each do |file|
      if file.include?(".mp3") 
        @mp3_array << file 
      end 
    end 
    @mp3_array
  end 
  
  def import 
    @mp3_array = self.files 
    @mp3_array.each {|file| Song.new_by_filename(file) }
  end 
    
end 

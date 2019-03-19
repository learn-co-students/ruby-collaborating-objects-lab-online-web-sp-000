require 'pry'

class MP3Importer 
  attr_accessor :path 
  
  def initialize(filepath)
    @path = filepath
  end 
  
  def files 
    
    search_string = @path + "/**/*.mp3" 
    files_array = Dir[search_string]
    spliced_files = []
    files_array.each do |file|
      file_array = file.split("./spec/fixtures/mp3s/")
      spliced_files << file_array[1]
    end 
  spliced_files 
  end 
  
  def import 
    file_names = self.files 
    file_names.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
end 
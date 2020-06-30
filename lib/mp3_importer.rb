class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path =  "./spec/fixtures/mp3s"
    
  end
  
  def files
    array=Dir.entries(path)
    array.delete("..")
    array.delete(".")
    array
    #binding.pry
    
  end
  
  def import
    files.each do |file|
    Song.new_by_filename(file)
    end
  end
end
class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path 
  end 
  
  def files 
    Dir.entries(@path).select {|file| file.include?(".mp3")}
    # binding.pry
  end 
  
  def import 
    files.each {|filename| Song.new_by_filename(filename)}
  end 
  
end 
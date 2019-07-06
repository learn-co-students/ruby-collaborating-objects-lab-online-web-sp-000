require "pry"
class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
 
  def files
    filename = []
    entries = Dir.glob("#{@path}/*.mp3")
    entries.map {|file| a = file.split("#{@path}/")
      filename << a[1]}
    return filename
  end
  
  def import 
    files.each {|file| Song.new_by_filename(file)}
  end
  
  
end
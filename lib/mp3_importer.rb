require 'pry'

class MP3Importer
  attr_accessor :path, :files, :import
  def initialize(path)
    @path = path
    @files = []
    Dir.glob("#{@path}/*.mp3").each {|file| @files << file}
  end 
  
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end 
  
  
  
  def files 
    @files.collect {|file| file.split("/").last} 
  end 
  
end 
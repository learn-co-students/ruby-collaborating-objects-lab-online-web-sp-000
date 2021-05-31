require "pry"

class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
    file_path.chomp("./spec")
    #binding.pry
   # @files << file_path
  end 
  
  def files
    @files = Dir.entries(@path)
    @files.delete(".")
    @files.delete("..")
    @files
  end 
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end  
  end 
  
end 
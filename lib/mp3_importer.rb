require 'pry'

 
class MP3Importer
  attr_accessor :path, :song 
  
  def initialize(path)
    @path = path 
    #@@all = [] 
  end 
 
  def files
    array_of_entries = Dir.entries(path)
    array_of_entries.delete(".")
    array_of_entries.delete("..")
    array_of_entries
    end 

def import
  #filename = array_of_entries
  self.new_by_filename(filename)
end 
end 

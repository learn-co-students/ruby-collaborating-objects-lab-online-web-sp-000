require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
 def self.new_by_filename(file_name)
  # binding.pry
   new_file = file_name.split("-")
   name= new_file[1]
   name 
 end 
 
end 
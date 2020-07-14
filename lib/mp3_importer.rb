require 'pry'

class MP3Importer
  attr_accessor :path
  @@file_names = nil

  def initialize(path)
    @path = path
  end

  def files 
    list_of_filenames = nil
    list_of_filenames = Dir["./spec/fixtures/mp3s/*"].collect{|x| x.split("/spec/fixtures/mp3s/")}
    list_of_filenames.collect{|x| x.delete_at(0)}
    @@file_names = list_of_filenames.flatten!
  end
  
  def import 
   @@file_names.each{|file_name| Song.new_by_filename(file_name)}
  end

end 

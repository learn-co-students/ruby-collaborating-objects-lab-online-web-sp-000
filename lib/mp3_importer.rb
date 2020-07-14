require "pry"
class MP3Importer 
  #parse filenames and send filenames to Song class
  attr_accessor :path 
  def initialize(path) 
    @path = path 
  end 
  def files
    mp3s= Dir.glob("**/*.mp3")
    mp3s.map do |element|
      element.slice! "spec/fixtures/mp3s/"
    end
    mp3s
  end 
  
  def import
    files.each do |mp3s|
      Song.new_by_filename(mp3s)
    end 
  end 
end 
require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path = "")
    @path = path
    @files = []
  end
  
  def files
    temp = Dir["#{path}/*.mp3"].each { |i| @files << i.split("/").last}
    @files
  end
  
  def import
    files.each{|i| Song.new_by_filename(i)}
  end
end
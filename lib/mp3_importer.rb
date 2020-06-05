require 'pry'

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = './spec/fixtures/mp3s'
  end
  
  
def files 
  Dir["#{@path}/*"].map {|x| x.gsub('./spec/fixtures/mp3s/', '')}
  
end

def import
  files.each {|filename| Song.new_by_filename(filename)}
end
end 
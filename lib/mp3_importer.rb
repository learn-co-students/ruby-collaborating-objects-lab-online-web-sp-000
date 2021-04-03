require 'pry'

class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files=[]
  end
  
  def files
    Dir.entries(path).each do |file| 
      if file.include?(".mp3")
        @files << file
      end
    end
    @files
  end
  
  def import
    self.files.each do |filename|
      filename = Song.new_by_filename(filename)
    end
  end
end
 
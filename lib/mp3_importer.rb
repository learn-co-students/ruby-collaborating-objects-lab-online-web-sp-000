require 'pry'
class MP3Importer
  
  attr_reader :path
  def initialize(path)
    @path = path
  end
  
  def files
    Dir["#{@path}/*"].collect do |file| 
      file.partition(/(\/)(?!.*\/)/).last
    end
  end
  
  def import
    files.each { |file| Song.new_by_filename(file) }
  end
  
end
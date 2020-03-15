require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{path}/*.*").map {|file| file.gsub("#{path}/", "")}
end

  def import
    files.each {|files| Song.new_by_filename(files)}
end


#binding.pry  

end

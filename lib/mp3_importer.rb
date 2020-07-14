require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
   Dir.entries(path)[1..-2]
  end

 def import
   files.each {|file| Song.new_by_filename(file)}
 end

end

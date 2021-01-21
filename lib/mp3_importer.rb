require 'pry'

class MP3Importer

    attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if {|files| files == "." || files == ".."}
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end

end
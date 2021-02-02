require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.keep_if{|x| x.include?(".mp3")}
    @files = files
  end

  def import
    files
    newfile = @files[0].gsub(/ - [a-z](.*)/, "")
    newfile = @files[0].gsub(/^(.*)- /, "")
    binding.pry
  end

end

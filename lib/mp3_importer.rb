require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.pop
    files.pop
    @files = files
  end

  def import
    files
    mod_files = @files.gsub(/"\w* \w*/,"")
    binding.pry
  end

end

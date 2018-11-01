require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select{|file| !File.directory? file}
  end
end

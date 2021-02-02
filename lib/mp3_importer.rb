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
    @files.each.map do |x|
      x.gsub(/"\w* \w* - /,"")
    end
    binding.pry
  end

end

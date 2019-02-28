require 'pry'
class MP3Importer

  attr_accessor :path, :x

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|a| a.match(/mp3/)}
  end

  def import
    files.each {|x| Song.new_by_filename(x)}
  end
end

require 'pry'
class MP3Importer

  attr_accessor :path
  def initialize(filename)
    @path = filename
  end

  def files
    x = Dir["#{@path}/*"]
    x.each  {|y| y.slice!(/.*\//)}
  end

  def import
    files.each { |y|
      s = Song.new_by_filename(y)
    }
  end
end

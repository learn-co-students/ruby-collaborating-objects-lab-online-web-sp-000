require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["./spec/fixtures/**/*.mp3"]
  end

  def import
  end

end

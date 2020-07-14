require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    path = Dir.new('./spec/fixtures/mp3s')
    path.entries.shift(4)
  end

  def import
    path.each{|filename| Song.new_by_filename(filename)}
  end

end

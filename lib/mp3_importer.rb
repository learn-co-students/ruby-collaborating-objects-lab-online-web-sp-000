require 'pry'

class MP3Importer

  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files

    Dir.glob("#{@path}/*.mp3").map do |file|
      file.gsub("#{@path}/", "")
    end
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end

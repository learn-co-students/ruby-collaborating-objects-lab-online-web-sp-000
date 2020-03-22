require 'pry'
class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files
    files = []
    files = Dir.new(path).entries
    mp3_files = files.select {|file| file.include?(".mp3")}
    mp3_files
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end

end

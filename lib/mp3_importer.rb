require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(@path) {|filename| 
      if filename.end_with?(".mp3") && !@files.include?(filename)
        @files << filename
      end
    }
    @files
  end

  def import
    files
    @files.each {|file| Song.new_by_filename(file)}
  end
end

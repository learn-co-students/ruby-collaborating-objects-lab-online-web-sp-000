require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = []
    self.files_parse
  end

  def files_parse
    fileArray = Dir.entries(@path)
    fileArray.each do |file|
      if file.end_with?(".mp3")
        @files << file
      end
    end
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

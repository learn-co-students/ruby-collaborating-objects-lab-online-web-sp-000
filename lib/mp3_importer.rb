require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    file = Dir.entries(@path)
    file.each do |name|
      if name.include?("mp3")
        @files << name
      end
    end
    @files
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

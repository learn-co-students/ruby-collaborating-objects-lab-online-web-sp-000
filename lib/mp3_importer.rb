require 'pry'
class MP3Importer
  attr_accessor  :filepath
  def initialize(filepath)
    @filepath = filepath
    @files = []
  end

  def path
    @filepath
  end

  def files
    @files = Dir.entries(@filepath)
    @files = @files.select{
      |file| file.include?("mp3")
    }
    @files
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

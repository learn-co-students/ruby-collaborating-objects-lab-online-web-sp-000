require 'pry'
class MP3Importer
  attr_accessor :path, :size

  @@files = []

  def initialize(path)
    @path = path
    @@files << self
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |file|
      file_array = file.split("/")
      file_array[4]
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

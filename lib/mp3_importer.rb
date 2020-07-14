require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path=path
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.collect do |filename|
      filename.split(@path +"/")[1]
    end
  end

  def import
    self.files.each do |filename|
      filename = filename.split(".mp3")[0]

      Song.new_by_filename(filename)

    end
  end
end

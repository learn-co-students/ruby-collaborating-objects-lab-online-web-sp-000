require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["./spec/fixtures/mp3s/*.mp3"]
    files.each do |filename|
      path_name = filename.slice!("./spec/fixtures/mp3s/")
      filename
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

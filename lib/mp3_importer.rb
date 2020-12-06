require 'pry'

class MP3Importer
  attr_accessor :filenames, :path

  def initialize(file_path)
    @filenames = self.files
    @path = Dir[file_path].join
  end

  def files
    files = Dir.glob("#{self.path}/*.mp3")
    file_arr = files.each {|file| file.slice!(/.\/spec.............../)}
    file_arr
  end

  def import
    self.files.map do |filename|
      Song.new_by_filename(filename)
    end
  end


end

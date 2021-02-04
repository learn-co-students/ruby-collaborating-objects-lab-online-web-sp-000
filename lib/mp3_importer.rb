require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.keep_if{|x| x.include?(".mp3")}
    @files = files
  end

  def import
    files
    @files.each do |x|
       split_file = x.split(" - ")
       Song.new_by_filename(split_file[1])
    end
  end

end

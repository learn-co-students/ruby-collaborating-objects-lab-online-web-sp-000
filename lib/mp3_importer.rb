#gem install pry
require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{self.path}/*.mp3")
    files.map{|file| File.basename(file)}
  end
  
  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end

end


path = "./spec/fixtures/mp3s"
a = MP3Importer.new(path)
puts a.files.inspect

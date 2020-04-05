require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    tempFiles =[]
    tempFiles = Dir["./spec/fixtures/mp3s/*.mp3"]
    files = []
    tempFiles.each do |file|
      files.push(file.split(/(.\/.+\/)(.*)/)[2])
    end
    files
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end





end

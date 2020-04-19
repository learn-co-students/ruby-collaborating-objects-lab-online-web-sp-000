require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    result_array = Dir.entries(path)
    result_array.delete("..")
    result_array.delete(".")
    result_array
  end

  def import
    songs_to_add = files
    songs_to_add.each {|song| Song.new_by_filename(song)}
  end
end

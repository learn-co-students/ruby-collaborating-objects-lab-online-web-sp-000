require_relative 'song.rb'
require_relative 'artist.rb'

require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.children(path)
  end

  def import
    files.each {|mp3_file| Song.new_by_filename(mp3_file)}
  end

end

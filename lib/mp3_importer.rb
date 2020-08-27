require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    # binding.pry
    Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    song_list = files
    song_list.collect {|v| Song.new_by_filename(v)}

  end

end

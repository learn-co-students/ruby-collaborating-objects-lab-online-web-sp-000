
test_music_path = "./spec/fixtures/mp3s"

class MP3Importer
  attr_accessor :path, :dir

  def initialize(path)
    @path = path

    # file_list
  end


  def files
    @dir = Dir.new(@path)
    file_list = @dir.entries.collect{|file| file.end_with?(".mp3") ? file : nil }.compact
    # file_list.compact
  end

  def import
    files.each {|song| Song.new_by_filename}
  end


end


test = MP3Importer.new(test_music_path)

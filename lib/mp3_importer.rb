#parse all the filenames in the spec/fixtures folder
#and send the filenames to the Song class

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.entries(@path)
    return file_list.select {|file| file.end_with? (".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    my_files = Dir.entries(@path)
    return_files = []
    my_files.each do |file|
      return_files << file if file.scan(/[.]\w+/)[0] == ".mp3"
    end
    return_files
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end

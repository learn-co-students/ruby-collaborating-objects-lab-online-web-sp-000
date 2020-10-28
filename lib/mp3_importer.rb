class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.children(path)
  end

  def import 
    files.each do |mp3|
      Song.new_by_filename(mp3)
    end
  end

end
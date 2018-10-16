class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    mp3_array = []
    data_array = Dir.glob("#{@path}/*.mp3")
    data_array.each do |file|
      mp3_array << file.split("/").last
    end
    mp3_array
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end

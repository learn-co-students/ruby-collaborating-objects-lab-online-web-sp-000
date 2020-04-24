class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = []
    Dir["#{path}/*.mp3"].each do |file|
      file = file.split("/")
      file_list.append(file[4])
    end
    file_list  #returns the filenames
  end

  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end

end

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir[@path + '/**/*.mp3'].map do |file|
      file.split('/')[-1]
    end
  end
  
  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
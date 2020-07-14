
# Action Bronson - Larry Csonka - indie.mp3
class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
    @files_list = []
  end

  def files
    mp3files = Dir["#{path}/*.mp3"]
    mp3files.each do |file|
    @files_list << file[21..-1]
    end
    @files_list
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
    
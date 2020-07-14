class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| File.basename(file)}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
    Song
  end
end
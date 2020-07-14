class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    self.path = path
  end
  
  def files
    Dir["#{self.path}/**/*.mp3"].collect {|name_with_path| name_with_path[self.path.length+1..-1]}
  end
  
  def import
    self.files.each do |song_filename|
      Song.new_by_filename(song_filename)
    end
  end
end
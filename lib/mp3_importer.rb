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
      filename_parse = song_filename.split(" - ")
      song_title = filename_parse[1]
      artist_name = filename_parse[0]
      Song.new()
    end
  end
end
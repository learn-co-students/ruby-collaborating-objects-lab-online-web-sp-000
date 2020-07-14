class MP3Importer
  attr_accessor :path
  
  def initialize(test_music_path)
    @path = test_music_path
  end
  
  def files
    normal = []
    Dir["#{@path}/*"].each {|file| normal << file.reverse.chomp("/#{@path.reverse}").reverse}
    return normal
  end
  
  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
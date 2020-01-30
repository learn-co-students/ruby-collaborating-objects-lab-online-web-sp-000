class MP3Importer
  attr_reader :path


  def initialize(path)
    @path = path
  end

  def files
    ##files = Dir.glob("*.mp3")
    ##@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "")
    Dir.children(path)
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end

end

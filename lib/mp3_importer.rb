class MP3Importer
  attr_accessor :path

  def initialize(road)
    @path = road
  end

  def files 
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end



end

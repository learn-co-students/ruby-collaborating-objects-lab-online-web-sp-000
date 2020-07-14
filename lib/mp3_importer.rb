  
class MP3Importer
  attr_reader :path

  def initialize(road)
    @path = road
  end

  def files #path without @ symbol here... it's calling the attr_reader
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
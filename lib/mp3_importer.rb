class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").map do |filename|
      filename.gsub("#{path}/", "")
    end
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end
end

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|filename| filename !="." && filename !=".."}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end

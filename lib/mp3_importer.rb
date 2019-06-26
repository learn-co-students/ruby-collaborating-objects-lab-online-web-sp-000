class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |f|
      files << f if f.length > 4
    end
    files
  end

  def import
    self.files.each do |f|
      Song.new_by_filename(f)
    end
  end

end

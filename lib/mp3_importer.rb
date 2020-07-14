class MP3Importer
  attr_accessor :filenames, :path

  def initialize(path)
    @path = path
      end


  def files
      files = []
      Dir.new(self.path).each do |file|
        files << file if file.length > 4
      end
      files
    end


  def import
    self.files.each do |i|
      Song.new_by_filename(i)
    end
  end

end

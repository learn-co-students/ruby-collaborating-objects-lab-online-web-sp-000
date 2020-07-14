class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
    @files = []
  end

  def files
    Dir.entries(self.path).select {|file| file.include? ".mp3"}
  end

  def import
    files.each do |file| file
      Song.new_by_filename(file)
    end
  end

end

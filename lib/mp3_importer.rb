class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir["#{@path}**/*.mp3"]
    files_to_be = []
    @files.each do |file|
      files_to_be << File.basename(file)
    end
    @files = files_to_be
  end

  def import
    self.files
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

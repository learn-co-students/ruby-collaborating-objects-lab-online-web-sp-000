class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.include? "mp3"
    end
    files
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename)}
    #list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end

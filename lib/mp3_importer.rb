class MP3Importer
  attr_accessor :path, :file

  def initialize(path)
    @path = path
  end

  def files
    file = Dir.entries(@path)
    @file = file[2...file.length]
  end

  def import
    self.files
    @file.each {|file| Song.new_by_filename(file)}
  end

end

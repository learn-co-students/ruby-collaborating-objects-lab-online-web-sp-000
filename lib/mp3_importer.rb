class MP3Importer
  attr_accessor :path, :filenames

  def initialize(file_path)
    @path = file_path
    @filenames = []
  end

  def files
    Dir.entries(path).each {|filename| @filenames << filename}
    @filenames.delete_if{|x| x == "." || x == ".."}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
end

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file ==".."}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

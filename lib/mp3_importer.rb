class MP3Importer
  attr_reader :path

  def initialize (file_path)
    @path = file_path
  end

  def files
    Dir.entries(self.path).delete_if {|f| f.size < 3}
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end

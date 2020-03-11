class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
    Dir.chdir(path) do
      @files = Dir.glob("*.mp3")
    end
    Dir.chdir("./")
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end

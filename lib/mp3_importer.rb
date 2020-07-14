class MP3Importer
attr_accessor :file_path
  def initialize(file_path)
    @path = file_path
    @files = []
  end

  def path
    @path
  end #of path

  def files
    directory = File.expand_path(@path)
    full_path_files = Dir.glob('spec/fixtures/mp3s/*.mp3')
    @files = full_path_files.map do |file|
      file[19..-1]
    end
    @files
  end #files

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end

  end

end # class

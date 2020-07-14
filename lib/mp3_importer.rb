class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect do |filename|
      File.basename(filename)
    end
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end

test = MP3Importer.new("./spec/fixtures/mp3s")
puts test.files

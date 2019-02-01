class MP3Importer
  attr_accessor :path, :list

  def initialize(path)
    @path = path
  end

  def import
     files.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    @list = Dir["spec/fixtures/mp3s/*.mp3"].each {|filename_with_path| filename_with_path.slice!("spec/fixtures/mp3s/")}
  end


end

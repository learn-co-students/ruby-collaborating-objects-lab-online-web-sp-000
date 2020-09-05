class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.chdir(@path) do | path | #Changes directory
      Dir.glob("*.mp3")          #Globs items from directory that are .mp3
    end
  end

  def import
    self.files.each {|song| Song.new_by_filename(song)}
  end
end

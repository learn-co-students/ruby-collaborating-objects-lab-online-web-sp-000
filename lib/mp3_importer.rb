class MP3Importer
  attr_accessor :file, :path

  @@path = []

  def initialize(file)
    @file = file
  end

  def files
    @@path << @file
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end

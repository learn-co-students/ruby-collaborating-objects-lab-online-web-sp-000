class MP3_Importer
    @@path
  def initialize(path)

  end

  def files
  end

  def import
    Song.new_by_filename(filename)
  end


end

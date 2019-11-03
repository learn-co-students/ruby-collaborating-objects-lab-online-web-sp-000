class MP3Importer
  attr_accessor :path

  @@IMPORT_FILE_NAMES = []

  def initialize(file_path)
    @path = file_path
  end

  def files
    mp3_files = Dir["./spec/fixtures/mp3s/*.mp3"]

    normalized_files =[]
    mp3_files.each do |file|
      normalized_files.push(file.gsub("./spec/fixtures/mp3s/",""))
    end
    normalized_files
  end

  def import

    files_to_import = self.files

    files_to_import.each do | imported_file_name|
      @@IMPORT_FILE_NAMES << Song.new_by_filename(imported_file_name)
    end
    @@IMPORT_FILE_NAMES
  end

end

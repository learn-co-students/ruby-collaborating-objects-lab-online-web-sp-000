class MP3Importer
	attr_accessor :filepath

	def initialize(file_path)
		@file_path = file_path
	end

	def files
		
	end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
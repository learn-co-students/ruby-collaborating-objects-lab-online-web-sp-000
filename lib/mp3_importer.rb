class MP3Importer
	attr_reader :path

	def initialize(path)
		@path = path
		import
	end

	def files
		Dir.entries(path).select {|f| !File.directory?(f)}
	end

	def import
		files.collect {|filename| Song.new_by_filename(filename) }
	end
end
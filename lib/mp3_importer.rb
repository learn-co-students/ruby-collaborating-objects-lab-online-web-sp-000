require 'pry'
class MP3Importer
require_relative("../lib/song.rb")

	attr_reader :path

	def initialize(path)
		@path = path
	end

	def files
		Dir.children(self.path)
	end

	def import
		self.files.each{ |file| Song.new_by_filename(file) }
	end
end
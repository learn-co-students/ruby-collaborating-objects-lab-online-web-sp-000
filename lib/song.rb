class Song
	attr_accessor :name, :artist

	@@all = []

	def self.all
		@@all
	end

	def self.new_by_filename(filename)
		song = new(filename.split(" - ")[1])
		song.artist_name = filename.split(" - ")[0]

		song
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def artist_name=(name)
		Artist.find_or_create_by_name(name).add_song(self)
	end
end

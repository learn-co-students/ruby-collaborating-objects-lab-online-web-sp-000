class Song
	attr_accessor :name, :artist, :artist_name

	@@all = []

	def initialize(name, g_artist = nil)
		@name = name
		@artist = g_artist
		save
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def self.new_by_filename(file_name)
		name = file_name.split(" - ")[1]
		artist_name = file_name.split(" - ")[0]
		artist = Artist.find_or_create_by_name(artist_name)
		Song.new(name, artist)
	end

	def artist_name=(g_artist)
		self.artist = Artist.find_or_create_by_name(g_artist)
	end
end
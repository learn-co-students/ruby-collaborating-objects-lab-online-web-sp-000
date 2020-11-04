class Song
	attr_accessor :name, :artist

	@@all = []

	def self.all
		@@all
	end

	def self.new_by_filename(filename)
		artist_name, song_name = filename.split(" - ")
		new(song_name).tap{|song| song.artist_name = artist_name}
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def artist_name=(name)
		Artist.find_or_create_by_name(name).add_song(self)
	end
end

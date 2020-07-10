require 'pry'
class MP3Importer

  def initialize (music_path)

    @music_path = music_path
    @all_files = Dir.children(music_path)
  end

  def path
    @music_path
  end

  def files
    @all_files
  end

  def import
    @all_files.each {|filename| Song.new_by_filename(filename)}
  end
end

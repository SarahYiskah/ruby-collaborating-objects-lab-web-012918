require 'pry'
class Song
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # binding.pry
    file_name = filename.split(" - ")
    # genre = filename.last.chomp('.mp3')
    song_name = file_name[1]
    artist_name = file_name.first
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song_name)

    song
  end
  # def artist=
  # end
end

require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    # binding.pry
    @songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    found_artist = @@all.find {|a| name == a.name}
    # artist == nil ? artist = Artist.new(name) : artist
    if found_artist
      found_artist
    else
      artist = Artist.new(name)
      artist.save
      artist
    end

  end

  def print_songs
    @songs.each {|a| puts a.name}
  end

end

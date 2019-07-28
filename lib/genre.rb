require 'pry'

class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists                   
    self.songs.collect do |song|
      song.artist
    end
  end
end

jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)
jay_z.add_song(ninety_nine_problems)
another_crappy_song = Song.new("Crappy Song", rap)
jay_z.add_song(another_crappy_song)
jay_z.songs
# ninety_nine_problems.genre
rap.songs 

rap.songs.collect {|i| i.name}
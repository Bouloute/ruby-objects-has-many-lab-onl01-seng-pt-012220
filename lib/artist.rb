class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select{|song|
      song.artist == self
    }
  end

  def self.song_count
    Song.all.size
  end


  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

end

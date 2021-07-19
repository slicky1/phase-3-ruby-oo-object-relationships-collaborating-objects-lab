class Song

    attr_accessor :name, :artist
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end 
  
    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
    end
  
    def self.new_by_filename(fn)
      artist_name, song_name, part = fn.split(" - ")
      song = Song.new(song_name)
      song.artist_name = artist_name
      song
    end
  
  end
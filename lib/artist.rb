class Artist

    @@all = []
  
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def songs
      Song.all.select {|song| song.artist == self}
    end
  
    def self.all
      @@all
    end
  
    def add_song(song)
      song.artist = self
    end
  
    def print_songs
      songs.each {|et| puts et.name}
    end
  
    def self.find_or_create_by_name(name)
      artist = self.all.find{|et| et.name == name}
      artist ||= Artist.new(name)
    end
  
  end
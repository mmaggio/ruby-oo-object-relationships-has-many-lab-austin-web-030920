class Artist
    attr_accessor :name, :song
    
    @@songs = []
    def initialize(name)
        @name = name
        
    end

    def songs
        Song.all.collect {|s| s}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end
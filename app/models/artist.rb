class Artist < ActiveRecord::Base
    has_many :songs

    before_create :song_count

    def song_count
        self.songs.count
    end
end

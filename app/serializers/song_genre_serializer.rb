class SongGenreSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :artist_id
end

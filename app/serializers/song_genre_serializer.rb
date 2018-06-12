class SongGenreSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :genre_id
end

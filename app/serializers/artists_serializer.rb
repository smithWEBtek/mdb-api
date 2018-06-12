class ArtistsSerializer < ActiveModel::Serializer
	attributes :id, :name, :songs, :genres
	has_many :song_artists
	has_many :songs, through: :song_artists
	has_many :genres, through: :songs
end

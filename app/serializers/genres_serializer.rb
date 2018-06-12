class GenresSerializer < ActiveModel::Serializer
	attributes :id, :name, :description
	has_many :song_genres
	has_many :songs, through: :song_genres
	has_many :artists, through: :songs
end

class ArtistsSerializer < ActiveModel::Serializer
	attributes :id, :name
	has_many :songs
	has_many :genres, through: :songs
end

class GenresSerializer < ActiveModel::Serializer
	attributes :id, :name, :description
	has_many :songs
	has_many :artists, through: :songs
end

class ListsSerializer < ActiveModel::Serializer
	attributes :id, :date, :description, :songs
	has_many :list_songs
	has_many :songs, through: :list_songs
 
end

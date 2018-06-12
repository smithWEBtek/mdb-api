class ListsSerializer < ActiveModel::Serializer
	attributes :id, :date, :description
	has_many :songs
end

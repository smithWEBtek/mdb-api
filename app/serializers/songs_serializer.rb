class SongsSerializer < ActiveModel::Serializer
	attributes :id, :name
	has_many :docs
	has_many :lists
end

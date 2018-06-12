class SongsSerializer < ActiveModel::Serializer
	attributes :id, :name
	has_many artists
	has_many genres
	has_many docs
	has_many mp3s
	has_many lists
end

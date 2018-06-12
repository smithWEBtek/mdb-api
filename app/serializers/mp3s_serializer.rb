class Mp3sSerializer < ActiveModel::Serializer
	attributes :id, :song_id, :name, :url, :description
	belongs_to :song
end

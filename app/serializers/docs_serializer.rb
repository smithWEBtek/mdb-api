class DocsSerializer < ActiveModel::Serializer
	attributes :id, :song_id, :format, :description, :url
	belongs_to :song
end

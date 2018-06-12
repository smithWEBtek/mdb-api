class DocsSerializer < ActiveModel::Serializer
	attributes :id, :song_id, :name, :description, :format
	belongs_to :song
end

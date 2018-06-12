class ListSongSerializer < ActiveModel::Serializer
	attributes :id, :list_id, :song_id
	belongs_to :list 
	belongs_to :song
end

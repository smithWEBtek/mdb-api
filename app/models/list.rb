class List < ApplicationRecord
	has_many :list_songs
	has_many :songs, through: :list_songs
end

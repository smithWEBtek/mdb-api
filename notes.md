

song
name
has_many artists
has_many genres
has_many docs
has_many mp3s
has_many lists

song_artist
belongs_to :song
belongs_to :artist

artist
name
has_many :songs
has_many :genres, through: :songs

song_genre
belongs_to :song
belongs_to :genre

genre
name, description
has_many :songs
has_many :artists, through: :songs

mp3
song_id, name, url, description

doc
song_id, name, format, url, description

list
song_id, name, date, description
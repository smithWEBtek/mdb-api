

song
name
has_many artists
has_many genres
has_many docs
has_many mp3s
has_many lists

artist
name
has_many :songs
has_many :genres, through: :songs

genre
name, description
has_many :songs
has_many :artists, through: :songs

mp3
name, url

doc
name, format, url

list
name, date, description
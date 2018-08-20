Song.create(name: 'Blue Skies')
Song.create(name: 'Wichita Lineman')
Song.create(name: 'Happy')
Song.create(name: 'Somewhere Over The Rainbow')
Song.create(name: 'Llororas')
 
Doc.create(song_id: 1, format: 'pdf', description: 'seed pdf doc', url: '#')
Doc.create(song_id: 2, format: 'pdf', description: 'seed pdf doc', url: '#')
Doc.create(song_id: 3, format: 'pdf', description: 'seed pdf doc', url: '#')
Doc.create(song_id: 4, format: 'pdf', description: 'seed pdf doc', url: '#')
Doc.create(song_id: 5, format: 'pdf', description: 'seed pdf doc', url: '#')

Doc.create(song_id: 1, format: 'mp3', description: 'seed audio doc', url: '#')
Doc.create(song_id: 2, format: 'mp3', description: 'seed audio doc', url: '#')
Doc.create(song_id: 3, format: 'mp3', description: 'seed audio doc', url: '#')
Doc.create(song_id: 4, format: 'mp3', description: 'seed audio doc', url: '#')
Doc.create(song_id: 5, format: 'mp3', description: 'seed audio doc', url: '#')
 
Doc.create(song_id: 1, format: 'sib', description: 'seed sibelius doc', url: '#')
Doc.create(song_id: 2, format: 'sib', description: 'seed sibelius doc', url: '#')
Doc.create(song_id: 3, format: 'sib', description: 'seed sibelius doc', url: '#')
Doc.create(song_id: 4, format: 'sib', description: 'seed sibelius doc', url: '#')
Doc.create(song_id: 5, format: 'sib', description: 'seed sibelius doc', url: '#')
 

List.create(name: 'LaFabrica1', date: '06-03-2018', description: 'seed list')
List.create(name: 'Classical1', date: '06-03-2018', description: 'seed list')
List.create(name: 'Standards1', date: '06-03-2018', description: 'seed list')
List.create(name: 'Latin1', date: '06-03-2018', description: 'seed list')
List.create(name: 'Broadway1', date: '06-03-2018', description: 'seed list')

ListSong.create(song_id: 1, list_id: 1)
ListSong.create(song_id: 2, list_id: 1)
ListSong.create(song_id: 3, list_id: 1)

ListSong.create(song_id: 3, list_id: 2)
ListSong.create(song_id: 4, list_id: 2)
ListSong.create(song_id: 5, list_id: 2)

ListSong.create(song_id: 2, list_id: 3)
ListSong.create(song_id: 3, list_id: 3)
ListSong.create(song_id: 4, list_id: 3)
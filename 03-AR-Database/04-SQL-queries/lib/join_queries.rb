require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT Track.name, Album.title, Artist.name FROM Track INNER JOIN Album, Artist ON Track.albumid == Album.albumid AND Album.artistid == Artist.artistid ")

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  db.execute("SELECT AVG(Milliseconds), COUNT(Track.name) FROM Track INNER JOIN Genre ON Track.genreid == Genre.genreid ")
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  db.execute("SELECT Artist.name, COUNT(Track.TrackId) AS TrackCount FROM Artist

    JOIN Album ON Album.ArtistId == Artist.ArtistId
    JOIN Track ON Track.AlbumId == Album.AlbumId
    JOIN Genre ON Track.GenreId == Genre.GenreId

  WHERE Genre.Name == 'Rock'
  GROUP BY Artist.Name
  ORDER BY TrackCount DESC
  LIMIT 0, 5")
end



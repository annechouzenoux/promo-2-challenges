require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute( "SELECT COUNT (*) FROM #{table_name}" ).flatten.first
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  db.execute( "SELECT name FROM Artist ORDER BY name" ).flatten
end

def love_tracks(db)
  #TODO: return array of love songs
  db.execute("SELECT name FROM Track WHERE name LIKE '%love'").flatten
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  db.execute( "SELECT name FROM Track WHERE Milliseconds > min_length * 60000").flatten
end


p number_of_rows(db, "Track")


# This script will create and populate a simple contact manager
# It has a 1:many relation for person:phone

dropdb test
createdb test
psql -d test -f commands.sql
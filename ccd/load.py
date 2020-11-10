'''
LOAD

DESCRIPTION:
Read in lines from a text file,
Split each line into tokens,
Initialize an object with the tokens,
Add the object to the db

NOTES:
Run this script when new data needs to be added.
Change the file name, object name, and number of variables.
'''

from models import *
from tables import *

f = open("links.txt","r")
for line in f.readlines():
  row = line.split("\t")
  a = Links(row[0],row[1],row[2],row[3],row[4])
  exists = Links.query.filter_by(title=a.title).first()
  if exists is None:
    db.session.add(a)
    db.session.commit()
f.close()


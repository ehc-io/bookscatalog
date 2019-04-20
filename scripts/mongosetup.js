use bookstoreappdb
db.createUser({user: 'userapp', pwd: 'userapp', roles: [{role: 'readWrite', db: 'bookstoreappdb'}], mechanisms:["SCRAM-SHA-1"] })

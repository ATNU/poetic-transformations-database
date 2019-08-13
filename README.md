# Poetic Transformations Database
Builds a docker container for an [exist-db](http://exist-db.org/exist/apps/homepage/index.html) database, an open source XML database and GUI.

##Deployment

###Docker commands
```docker-compose build .```

```docker-compose up -d```

###Setting up the database for the first time
Navigate to ```http://192.168.99.100:8080``` and select 'eXide - XQuery IDE'.

Upload files and configure:
1. go to File > Manage and log in as admin with no password
2. create new collection called 'transformations'
3. still in the 'Manage' window, click into transformations and upload all xml files (upload files not upload directory) and click done
4. in system > config > db create another collection, again called 'transformations'
5. close the Manage window
6. click to create a new xml document and paste in the config file from the repo
7. save config file in db > system > config > db > transformations as 'collection.xconf'
8. prompt will ask you if you want to apply the configuration, select ok

###Querying the database
To run queries direct in the database, use the eXide environment. 

To query the eXist API directly submit queries directly, e.g. through Postman submit GET request to ```http://192.168.99.100:8080/exist/rest/db/transformations?_query=/db/transformations/M1.xql```

To submit queries from the client through the server ensure the [server](https://github.com/ATNU/poetic-transformations-server) container is running. 
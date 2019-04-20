# bookscatalog
Books Catalog API Demo - Based on loopback.io

Usage:

- Clone the repo  
- Run: docker-compose up

Note: The bookscatalog container runs a script to import a dataset to populate the mongodb collection. Being that said, running the script for the second time on will cause database index errors. To workaround that, remove the folder data, [app-folder]/data", before running docker-compose, otherwise stack will fail.
# bookscatalog
Books Catalog API Demo - Based on loopback.io

Usage:

- Run: export mongodb_ip = [IP address of the docker host]
- Add mongodb.local [IP address of the docker host] to your hosts file  
- Clone the repo  
- Run: docker-compose up

Note: If you're running docker-compose multiple times, run "sudo rm -fr [app-folder]/data" to reset the database. Otherwise mongodb bootstrap will hit an error which causes the app fail.
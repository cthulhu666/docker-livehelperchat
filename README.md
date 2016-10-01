docker-livehelperchat
=====================

[![](https://images.microbadger.com/badges/image/cthulhu666/docker-livehelperchat.svg)](https://microbadger.com/images/cthulhu666/docker-livehelperchat "Get your own image badge on microbadger.com")

LiveHelperChat docker image 

    docker run --name lhc -d -p 80:80 cthulhu666/docker-livehelperchat
    
open your browser on http://localhost and enjoy!

## Quickstart with Docker Compose ( https://docs.docker.com/compose/ )

Create `.env` file with following content (adjust to your needs):

```
MYSQL_DATABASE=lhc
MYSQL_USER=lhc
MYSQL_PASSWORD=lhc
MYSQL_RANDOM_ROOT_PASSWORD=true
```

Run `docker-compose up`, open your browser at http://localhost:8080/
and setup your LiveHelperChat instance (use `db` as database host!)

Enjoy :)

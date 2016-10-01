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

...or

Setup it using HTTPie (https://httpie.org/):

```
http POST localhost:8080/index.php/site_admin/install/install/1
http --form POST localhost:8080/index.php/site_admin/install/install/2 DatabaseUsername=lhc DatabasePassword=lhc DatabaseHost=db DatabasePort=3306 DatabaseDatabaseName=lhc
http --form POST localhost:8080/index.php/site_admin/install/install/3 AdminUsername=admin AdminPassword=mysecretpassword AdminPassword1=mysecretpassword AdminEmail=admin@example.com DefaultDepartament=head AdminName= AdminSurname=

```

(of course you can use e.g. curl to do it)

Enjoy :)

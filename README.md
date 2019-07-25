# builder-local

Local deployment of the habitat-api for storing habitat packages.
* local development
* proof of concept

## Configuration, Setup and Usage

```
git clone git@github.com:habitat-sh/builder.git
cd builder
export HAB_DOCKER_OPTS="-m 2GB -p 80:80 -p 9000:9000"
```
create github app
download github app private key
populate habitat-env

* try with bitbucket

```
hab studio enter
start-builder
```

login
generate HAB_AUTH_TOKEN
create personal origin
create core origin

```
hab pkg install -z _Qk9YLTEKYmxkci0yMDE3MDkyNzAyMzcxNApibGRyLTIwMTcwOTI3MDIzNzE0CjYrdk54RXdHcFJVQ0dMa2J4WEY5TS9VcWdZMVA5TW5PClVYUWdQdG5ZRVR5bEFMaFBIZVhzR3d4M0plR2EwUHJtd1plUER6ekFkckVYTkNuZQ== core/redis

hab pkg upload -u http://localhost -z _Qk9YLTEKYmxkci0yMDE5MDcxODE4NDAyMgpibGRyLTIwMTkwNzE4MTg0MDIyCnBhSzliZW1LQXlDTGZ6bVI1WGc3QzVxRVl0S2k3VzlyCkJiWGtCSDRSTm05ZlBkclJYTEdxUlRldWlhdHNyKzdjOVA2b3NVNEtPeUxzZ1FCdw== /hab/cache/artifacts/core-redis-4.0.14-20190319155852-x86_64-linux.hart
```

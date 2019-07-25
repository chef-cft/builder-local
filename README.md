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
hab pkg install -z YOURSAASBUILDERTOKEN core/redis

hab pkg upload -u http://localhost -z YOURLOCALBUILDEROTKEN /hab/cache/artifacts/core-redis-4.0.14-20190319155852-x86_64-linux.hart
```

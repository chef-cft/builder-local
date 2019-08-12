# builder-local

Local deployment of the habitat builder-api for storing habitat packages.


## Configuration

This local builder-api is run in a habitat studio and configured using a .studiorc and a .secrets dir that contains settings for the UI OAuth.

## Setup

Instructions on UI and OAuth setup can be found here in the DEVELOPING.md of the builder repo.

[https://github.com/habitat-sh/builder/blob/master/DEVELOPING.md#repository-setup](https://github.com/habitat-sh/builder/blob/master/DEVELOPING.md#repository-setup)

You will need your HAB_AUTH_TOKEN from the builder UI -> profile.

## Usage

To start builder-api locally

```
export HAB_DOCKER_OPTS="-m 2GB -p 80:80"
hab studio enter
start-builder
```

The builder-api will be running at [http://localhost](http://localhost)

## Seed Builder

Packages can be seeded from the Builder SAAS to your local builder by installing packages to your local workstation from the Builder SAAS and then uploading them to the local builder.

Make sure you have your HAB_AUTH_TOKEN from your local builder.

Example install and upload of a core package and it's dependency packages.

```
HAB_AUTH_TOKEN=YOURLOCALBUILDEROTKEN origin

hab pkg install core/redis

( cd /hab/cache/artifacts ; cat /hab/pkgs/core/redis/4.0.14/20190319155852/TDEPS | xargs -I % curl -O -J -L "https://bldr.habitat.sh/v1/depot/pkgs/%/download?target=x86_64-linux" )

hab pkg upload -u http://localhost -z YOURLOCALBUILDEROTKEN /hab/cache/artifacts/core-redis-4.0.14-20190319155852-x86_64-linux.hart
```

## Habitat Plan as Core Sync Artifact

Users may want to keep an artifact of which packages are being sync'd from Builder SAAS to their local builder.

1. Create a habitat plan to list core pkgs needed on the local builder.

1. Build the core pkgs plan.

1. Upload the core pkgs to the local builder.

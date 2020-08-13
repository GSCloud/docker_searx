# searX in Docker

[https://hub.docker.com/r/gscloudcz/searx]

## What is searX

SearX is a metasearch engine, inspired by the seeks project. It provides basic privacy by mixing your queries with searches on other platforms without storing search data. Queries are made using a POST request on every browser (except Chrome*). Therefore they show up in neither our logs, nor your url history. In case of Chrome* users there is an exception, SearX uses the search bar to perform GET requests. Searx can be added to your browser's search bar; moreover, it can be set as the default search engine.

## Features

* Based on Alpine Linux.
* Latest code from asciimoo/searx [https://github.com/asciimoo/searx/]
* A unique secret key is generated when booting the first time.
* Build-time variables
* VERSION: Searx version

### Environment variables

* IMAGE_PROXY : enables images proxying (default: false)
* BASE_URL: [http://domain.tld](http://domain.tld) (default: false)
* Port: 8888 (reverse proxy)

## Build container

* run **./build.sh**

## Install searX

* locally run **./deploy.sh**

or

* `docker rm searx --force`
* `docker run -d -p 8888:8888 --restart unless-stopped --name searx gscloudcz/searx`

## Configuration

* configuration is stored in: **.env**

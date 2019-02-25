# alpine-glibc-oracle

[![Build Status](https://travis-ci.org/jeanmorais/alpine-glibc-oracle.svg?branch=master)](https://travis-ci.org/jeanmorais/alpine-glibc-oracle)


This is an image based on Alpine, containing all libraries needed to run an Oracle Client application.

The base image is [frol/docker-alpine-glibc](https://github.com/frol/docker-alpine-glibc), and contains glibc to enable proprietary projects compiled against glibc (e.g. OracleJDK, Anaconda) work on Alpine.

## Required

The required files are in [oracle](/oracle) directory.

The package `instantclient_12_1.tar.gz` were originally downloaded from the [Oracle Site](https://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html), and unnecessary files were removed.

## Usage 

```
docker build -t alpine-glibc-oracle .
```

### Multi-stage build
To build a Golang application that uses Oracle database, I suggest you look [docker-go-oci8](https://github.com/jeanmorais/docker-go-oci8).

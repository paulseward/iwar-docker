# Dockerfile for building the iwar "inteligent war dialler"
iwar is available from https://github.com/beave/iwar

This repo is just a Dockerfile that builds/packages it.  See the iwar repository for more information about iwar itself.

## building
```
docker build -t iwar .
```

## running
See iwar documentation for command line parameters, but broadly speaking you can run it like this:

```
docker run --rm -it --device=/dev/ttyUSB0 iwar iwar -r 4000-4999
```

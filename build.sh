#!/bin/bash 

docker run --rm --net=host -it -v ${PWD}:/docs squidfunk/mkdocs-material:9.5 serve

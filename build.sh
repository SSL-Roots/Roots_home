#!/bin/bash 

docker run --rm --net=host -it -v ${PWD}:/docs squidfunk/mkdocs-material:8.1.11 serve

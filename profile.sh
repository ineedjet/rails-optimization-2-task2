#!/bin/bash

docker run -it \
    -v $(pwd):/home/massif/test \
    -e DATA_FILE=small.txt \
    spajic/docker-valgrind-massif \
    valgrind --tool=massif ruby task-2.rb data_large.txt

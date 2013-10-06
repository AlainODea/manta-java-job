#!/bin/bash
argument=$(echo -n "$1" | base64)
mfind -t o /$MANTA_USER/stor/manta-java-job/haystacks |
mjob create -o \
    -s /$MANTA_USER/stor/manta-java-job/bin/manta-java-job-assembly-1.0.jar \
    -m "
    java -jar /assets/$MANTA_USER/stor/manta-java-job/bin/manta-java-job-assembly-1.0.jar '$argument'
    " \
    -r "sort | uniq"

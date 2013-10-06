#!/bin/bash
mlogin /$MANTA_USER/stor/manta-java-job/haystacks/haystack1.txt \
    -s /$MANTA_USER/stor/manta-java-job/bin/manta-java-job-assembly-1.0.jar
# cat "$MANTA_INPUT_FILE" | java -jar /assets/$MANTA_USER/stor/manta-java-job/bin/manta-java-job-assembly-1.0.jar '^Needle.*$'


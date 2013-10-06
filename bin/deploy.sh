#!/bin/bash
sbt assembly &&
mmkdir -p /$MANTA_USER/stor/manta-java-job/bin/
mput -f target/scala-2.10/manta-java-job-assembly-1.0.jar \
  /$MANTA_USER/stor/manta-java-job/bin/

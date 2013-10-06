Manta Java Job
==============
An example of using Manta with Java code.

Pre-requisites
--------------
* SBT - http://www.scala-sbt.org/release/docs/Getting-Started/Setup.html#installing-sbt
* Manta - http://apidocs.joyent.com/manta/#getting-started

Usage
-----
* ./bin/put_dataset.sh - upload dataset to Manta
* ./bin/deploy.sh - assemble and upload Java code
* ./bin/run.sh $pattern - search dataset for pattern (java.util.Pattern format)

Example Usage
-------------
 * ./bin/put_dataset.sh
 * ./bin/deploy.sh
 * ./bin/run.sh '^Needle.*$'

Notes
-----
Certain characters such as "$" have involved escaping and unescaping
scenarios. To work around this I base64 encode the pattern argument, and
base64 decode it within the Java program.

Since this uses SBT you can easily bring in more Java libraries using SBT's
dependency management and ./bin/deploy.sh will pack them up into a single JAR
for you.

See
---
src/main/java/com/alainodea/NeedleFinder.java - Java class that echoes matches
of supplied pattern

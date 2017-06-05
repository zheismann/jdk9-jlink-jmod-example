#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+172.jdk/Contents/Home
JMOD=${JAVA_HOME}/bin/jmod
JMODS=${JAVA_HOME}/jmods

mkdir -p target/jmods
$JMOD create \
  --module-path $JMODS \
  --class-path target/result-1.jar:target/result-2.jar \
  --module-version 1.0-SNAPHSHOT \
  target/jmods/org.apache.jmod
#
# $JMOD create \
#   --module-path $JMODS:target/classes \
#   --os-arch x86_64 \
#   --os-name Darwin \
#   --class-path target/classes \
#   --module-version 1.0-SNAPHSHOT \
#   target/jmods/org.apache.jmod

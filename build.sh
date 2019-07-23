#!/bin/sh
cd $TRAVIS_BUILD_DIR/klattice
sbt ++$TRAVIS_SCALA_VERSION package
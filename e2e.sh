#!/usr/bin/env sh
set -e
sbt ++2.10.6 compilerPlugin/publishLocal createVersionFile \
    ++2.11.7 runtimeJVM/publishLocal grpcRuntime/publishLocal
cd e2e
sbt clean test

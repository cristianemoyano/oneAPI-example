#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1
make build_dpcpp
make build_omp
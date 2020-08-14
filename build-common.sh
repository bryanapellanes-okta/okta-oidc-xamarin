#!/bin/bash

source ./configure.sh
./build.sh --target=CommonTarget
./push_nuget.sh


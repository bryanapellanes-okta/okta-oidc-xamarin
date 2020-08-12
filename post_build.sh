#!/bin/bash

if [ -d "./artifacts/Common" ]; then
    for NUGETPACKAGE in $(ls ./artifacts/Common/*.nupkg)
    do
        echo "Pushing ${NUGETPACKAGE} to OKTA_NUGET_TOPIC_REPO"
        echo "${ARTIFACTORY_NUGET_APIKEY}"
        dotnet nuget push ${NUGETPACKAGE} -k ${ARTIFACTORY_NUGET_APIKEY} -s OKTA_NUGET_TOPIC_REPO
    done
else
    echo "./artifacts/Common Was not found; no post build work needed.";
fi
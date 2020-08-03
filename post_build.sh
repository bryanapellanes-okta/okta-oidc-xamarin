#!/bin/bash

if [ -d "./artifacts/Common" ]; then
    for NUGETPACKAGE in $(ls ./artifacts/Common/*.nupkg)
    do
        echo "Pushing ${NUGETPACKAGE} to OKTA_NUGET_TOPIC_REPO"
        dotnet nuget push ${NUGETPACKAGE} -k ${ARTIFACTORY_NUGET_APIKEY} -s OKTA_NUGET_TOPIC_REPO
    done
else
    echo "No post build work needed.";
fi
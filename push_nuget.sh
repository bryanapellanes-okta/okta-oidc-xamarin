#!/bin/bash

echo "nuget config:"
cat ~/.nuget/NuGet/NuGet.config | tr A 🙈

if [ -d "./artifacts/Common" ]; then
    for NUGETPACKAGE in $(ls ./artifacts/Common/*.nupkg)
    do
        echo "Pushing common Xamarin package ${NUGETPACKAGE} to OKTA_NUGET_TOPIC_REPO"
        dotnet nuget push ${NUGETPACKAGE} -k ${ARTIFACTORY_NUGET_APIKEY} -s OKTA_NUGET_TOPIC_REPO
    done
else
    echo "./artifacts/Common: No common artifacts found";
fi

if [ -d "./artifacts/Android" ]; then
    for NUGETPACKAGE in $(ls ./artifacts/Android/*.nupkg)
    do
        echo "Pushing Android package ${NUGETPACKAGE} to OKTA_NUGET_TOPIC_REPO"
        dotnet nuget push ${NUGETPACKAGE} -k ${ARTIFACTORY_NUGET_APIKEY} -s OKTA_NUGET_TOPIC_REPO
    done
else
    echo "./artifacts/Android: No Android artifacts found";
fi

if [ -d "./artifacts/iOS" ]; then
    for NUGETPACKAGE in $(ls ./artifacts/iOS/*.nupkg)
    do
        echo "Pushing iOS package ${NUGETPACKAGE} to OKTA_NUGET_TOPIC_REPO"
        dotnet nuget push ${NUGETPACKAGE} -k ${ARTIFACTORY_NUGET_APIKEY} -s OKTA_NUGET_TOPIC_REPO
    done
else
    echo "./artifacts/iOS: No iOS artifacts found"; 
fi
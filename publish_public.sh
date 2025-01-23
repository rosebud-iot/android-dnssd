#!/bin/sh

#!/bin/sh

version=$1

if [ -z "$version" ]; then
    echo "Missing version parameter value for the library to publish."
    echo "Example:"
    echo " $ ./publish_internal.sh 0.10.1"
    exit 1
fi

export PUBLISH_VERSION=$version
./gradlew :dnssd:publishReleasePublicationToGitHubPublicPackagesRepository

export PUBLISH_VERSION=

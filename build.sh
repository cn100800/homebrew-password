##!/usr/bin/env bash
set -e
version=$(git describe --tags --always)
go build -ldflags "-X homebrew-password/version.VERSION=$version" -o output/password
zip -j output/password.zip output/password

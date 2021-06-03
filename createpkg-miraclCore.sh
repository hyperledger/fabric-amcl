#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

set -e -x
rm -Rf core
export GOPATH=$PWD
mkdir -p $GOPATH/src
set +e
go get github.com/miracl/core/go
pushd $GOPATH/src/github.com/miracl/core/go
echo "32" | python config64.py
set -e
popd
cp -R $GOPATH/src/github.com/miracl/core/go/core .
pushd core/FP256BN
find . -name "*.go" -exec grep -l "github.com/miracl/core/go" {} \;

if [[ "$OSTYPE" == "darwin"* ]]; then
	find . -name "*.go" | xargs sed -i '' 's|github.com/miracl/core/go|github.com/hyperledger/fabric-amcl|g'
	find . -name "*.go" | xargs sed -i '' 's|//import.*||g'
else
	find . -name "*.go" | xargs sed -i 's|github.com/miracl/core/go|github.com/hyperledger/fabric-amcl|g'
	find . -name "*.go" | xargs sed -i 's|//import.*||g'
fi
popd
rm -Rf src

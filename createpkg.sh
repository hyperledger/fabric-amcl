#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

set -e -x
rm -Rf amcl
export GOPATH=$PWD
mkdir -p $GOPATH/src
set +e
go get github.com/miracl/amcl/version3/go
pushd $GOPATH/src/github.com/miracl/amcl/version3/go
echo "22" | python config64.py
set -e
popd
cp -R $GOPATH/src/github.com/miracl/amcl/version3/go/amcl .
pushd amcl/FP256BN
find . -name "*.go" -exec grep -l "github.com/miracl/amcl/version3/go" {} \;

if [[ "$OSTYPE" == "darwin"* ]]; then
	find . -name "*.go" | xargs sed -i '' 's|github.com/miracl/amcl/version3/go|github.com/hyperledger/fabric-amcl|g'
	find . -name "*.go" | xargs sed -i '' 's|//import.*||g'
else
	find . -name "*.go" | xargs sed -i 's|github.com/miracl/amcl/version3/go|github.com/hyperledger/fabric-amcl|g'
	find . -name "*.go" | xargs sed -i 's|//import.*||g'
fi
popd
rm -Rf src

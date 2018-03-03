#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#


rm -Rf amcl
export GOPATH=$PWD
mkdir -p $GOPATH/src
go get github.com/milagro-crypto/amcl/version3/go
pushd $GOPATH/src/github.com/milagro-crypto/amcl/version3/go
echo "20" | python config64.py
popd
cp -R $GOPATH/src/github.com/milagro-crypto/amcl/version3/go/amcl .
pushd amcl/FP256BN
find . -name "*.go" -exec grep -l "github.com/milagro-crypto/amcl/version3/go" {} \;

if [[ "$OSTYPE" == "darwin"* ]]; then
	find . -name "*.go" | xargs sed -i '' 's|github.com/milagro-crypto/amcl/version3/go|github.com/hyperledger/fabric-amcl|g'
else
	find . -name "*.go" | xargs sed -i 's|github.com/milagro-crypto/amcl/version3/go|github.com/hyperledger/fabric-amcl|g'
fi
popd
rm -Rf src

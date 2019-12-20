
# Hyperledger Fabric AMCL

Welcome to fabric-amcl repository. This repository holds cryptographic primitives needed to support [Identity Mixer credentials](https://hyperledger-fabric.readthedocs.io/en/latest/idemix.html) in Hyperledger Fabric.

New projects should import `github.com/hyperledger/fabric-amcl/core` as it uses the latest version of the [Apache Milagro Crypto](https://milagro.apache.org/) Go library.

`github.com/hyperledger/fabric-amcl/amcl` is deprecated.


# Build

**Python3.x** and **sed** are required.

Run `./createpkg.sh` to generate `./core` directory.

# Contribution

For contributors, please read through [Code of Contribution](./CONTRIBUTING.md) before commit.
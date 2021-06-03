
Welcome to the fabric-amcl repository. This repository holds the amcl package(s) we use in hyperledger/fabric in a go-gettable format. This allows us to use [dep](https://github.com/golang/dep/) to manage our dependencies.

Starting form `release-1.2`, this repository has been imported as dependencies in Fabric. See in [Package config file [dep]](https://github.com/hyperledger/fabric/blob/release-1.2/Gopkg.toml)

# History

>[FAB-7083](https://jira.hyperledger.org/browse/FAB-7083)  
>[FAB-8488](https://jira.hyperledger.org/browse/FAB-8488)  

# Build

**Python3.x** is neccessary as `miracl/amcl` requirement

Run `./createpkg-miraclAmcl.sh` to generate `./amcl` directory

Run `./createpkg-miraclCore.sh` to generate `./core` directory

# Contribution

For contributors, please read through [Code of Contribution](./CONTRIBUTING.md) before commit.

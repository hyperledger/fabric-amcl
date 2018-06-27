
Welcome to fabric-amcl repository. This repository helps to hold and handle the amcl package(s) we need in migrating 3rd party golang dependency management tools of hyperledger/fabric, from [govendor](https://github.com/kardianos/govendor) to [dep](https://github.com/golang/dep/).

Starting form `release-1.2`, this repository has been imported as dependencies in Fabric. See in [Package config file [dep]](https://github.com/hyperledger/fabric/blob/release-1.2/Gopkg.toml)

# History

>[FAB-7083](https://jira.hyperledger.org/browse/FAB-7083)  
>[FAB-8488](https://jira.hyperledger.org/browse/FAB-8488)  

# Build

**Python3.x** is neccessary as `milagro-crypto/amcl` requirement

Run `./createpkg.sh` to generate `./amcl` directory

# Contribution

For contributors, please read through [Code of Contribution](./CONTRIBUTING.md) before commit.
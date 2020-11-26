[![banner](https://raw.githubusercontent.com/oceanprotocol/art/master/github/repo-banner%402x.png)](https://oceanprotocol.com)

<h1 align="center">Ocean Contracts</h1>

> 🐙 Smart contracts for Ocean Protocol v3. https://oceanprotocol.com

[![Build Status](https://travis-ci.com/oceanprotocol/ocean-contracts.svg?token=soMi2nNfCZq19zS1Rx4i&branch=master)](https://travis-ci.com/oceanprotocol/ocean-contracts)
 [![codecov](https://codecov.io/gh/oceanprotocol/contracts/branch/master/graph/badge.svg?token=31SZX1V4ZJ)](https://codecov.io/gh/oceanprotocol/contracts)

---

**If you run into problems, please open up a [new issue](/issues).**

---

Overview:

![image](https://user-images.githubusercontent.com/5428661/92893688-31cbfa80-f41a-11ea-845c-2c94ecc978f1.png)



**Table of Contents**

- [Get Started](#get-started)
- [Usage](#usage)
  - [Local development](#local-development)
- [Testing](#testing)
- [Code Linting](#code-linting)
- [Networks](#networks)
  - [Testnets](#testnets)
- [Documentation](#documentation)
- [Contributing](#contributing)
- [Prior Art](#prior-art)
- [License](#license)

## Get Started

For quick installation of the contract `ABIs`:

```bash
npm i @oceanprotocol/contracts
```

### Usage

[ocean.js](https://github.com/oceanprotocol/ocean.js) and [ocean.py](https://github.com/oceanprotocol/ocean.py) wrap `contracts` in JavaScript and Python respectively. They each have quickstart guides.

### Local development

For local development of `contracts`, set up the development environment on your machine as follows.

As a pre-requisite, you need:

- Node.js v12+
- npm

Clone the project and install all dependencies:

```bash
git clone git@github.com:oceanprotocol/ocean-contracts.git
cd ocean-contracts/

# install packages
npm i

# to compile contracts
npm run compile
```

## Testing

Run tests with 

```bash
# for unit tests
npm run test:unit

# for test coverage
npm run test:cover
```

## Code Linting

Linting is setup for `JavaScript` with [ESLint](https://eslint.org) & Solidity with [Ethlint](https://github.com/duaraghav8/Ethlint).

```bash
# to check lint issues
npm run lint
```

Code style is enforced through the CI test process, builds will fail if there're any linting errors.

## Networks

### Testnets

For local development, start a local testnet using `ganache-cli`, then run:

```bash
npm run deploy
```

Or deploy to `rinkeby` network as follows:
```
export MNEMONIC='YOUR MNEMONIC SHOULD BE HERE'
# If you are using remote test or main net using Infura
export INFURA_TOKEN='GET INFURA_TOKEN FROM INFURA PLATFORM' 
npm run deploy:rinkeby
```
After the deployment, check out the [address.json](artifacts/address.json) file containing the deployed contracts addresses.

Checkout the supported deployment(s) on these [networks](docs/README.md#deployments).

## Documentation

To use generate documentation via `solidity-docgen` please run:

```bash
npm run doc:generate
```

* [Release Process](docs/RELEASE_PROCESS.md)
* [Core Documentation](docs/contracts)

## Contributing

More info [here](https://docs.oceanprotocol.com/concepts/contributing/).


## License

```
Copyright 2020 Ocean Protocol Foundation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

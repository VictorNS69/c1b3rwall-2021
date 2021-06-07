# _Cryptocurrencies and Smart Contracts: 100% secure?_ - C1b3rwall 2021

This repository contains some examples of vulnerabilities that can be found in Smart Contracts written in Solidity.

This code has been used for the talk _"Cryptocurrencies and Smart Contracts: 100% secure?"_ at the 2021 [C1b3rwall Academy](https://c1b3rwallacademy.usal.es/).

More information on vulnerabilities can be found in the [Smart Contracts](./contracts) directory.

## Authors

- [Víctor Nieves Sánchez](https://www.linkedin.com/in/victor-nieves-s%C3%A1nchez/)
- [Miguel Magaña Suanzes](https://www.linkedin.com/in/miguel-maga%C3%B1a/)

## Dependencies
- Node `v12.22.1`
- Docker

## Installation

You can install all the dependencies running `npm install`.

## Scripts

You can run the following script by typing `npm run-script <script>`.
- `remix-ide`: This command starts a [Remix IDE](https://remix.ethereum.org/) instance but locally at http://localhost:8080/.
- `remixd-local`: [Remixd](https://github.com/ethereum/remix-project/tree/master/libs/remixd) allows you to conect your localhost with Remix IDE online (https://remix.ethereum.org/).
- `remixd-web`: Allows you to conect your localhost with Remix IDE local instance.
- `start_ganache`: This command starts a local personal blockchain with [Ganache](https://www.trufflesuite.com/ganache) on port 8545.
- `stop_ganache`: This command stops Ganache.
- `deploy`: This command deploys all the contracts developed in this project.

## How to

In order to test these vulnerabilities, perform the following steps.

1. Install Docker and the project dependencies with `npm install`.
2. Build your own personal blockchain with `npm run-script start_ganache`.
3. Start your local Remix IDE with `npm run-script remix-ide`.
4. Link your localhost with Remix IDE with `npm run-script remixd-local`.
5. Deploy the Smart Contracts with `npm run-script deploy`. This will generate several `json` files (`addresses_<vulnerability>`) with the addresses of the different contracts.
6. In Remix, connect to your local blockchain and instantiate the Contracts at the addresses mentioned above. For more information about Remix IDE, please check this [link](https://remix-ide.readthedocs.io/en/latest/layout.html).
7. Play with this vulnerabilities and learn 😃.
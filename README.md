# c1b3rwall-2021
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
- `remix-ide`: This command starts a [Remix IDE](https://remix.ethereum.org/) instance but locally.
- `remixd`: [Remixd](https://github.com/ethereum/remix-project/tree/master/libs/remixd) allows you to conect your localhost with Remix IDE.
- `start_ganache`: This command starts a local personal blockchain with [Ganache](https://www.trufflesuite.com/ganache).
- `stop_ganache`: This command stops Ganache.
- `deploy`: This command deploys all the contracts developed in this project.

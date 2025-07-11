# feddyTask

I'm creating a federated task-scheduler. This GitHub repo will be its home base.

Sound fun? Feel free to contribute!

The launching point for this project:
https://open.substack.com/pub/zachbohl/p/of-llm-oses-and-ai-task-scheduling?r=607ofl&utm_campaign=post&utm_medium=web&showWelcomeOnShare=true


A Blockchain Task Scheduler

A decentralized task scheduler using Solidity smart contract and Rust worker agents.

## Structure
- `contracts/`: Solidity smart contracts
- `rust_worker/`: Off-chain Rust worker agent
- `scripts/`: Deployment scripts for Hardhat

## Quick Start
```bash
cd contracts
npx hardhat compiler
npx hardhat node
npx hardhat run ../scripts/deploy.js --network localhost

cd ../rust_worker
cargo run
```
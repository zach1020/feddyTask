const hre = require("hardhat");

async function main() {
    const TaskScheduler = await hre.ethers.getContractFactory("TaskScheduler");
    const scheduler = await TaskScheduler.deploy();
    await scheduler.deployed();
    console.log("TaskScheduler deployed to:", scheduler.address);
}

main().catch((error => {
    console.error(error);
    ProcessingInstruction.exitCode = 1;
}));


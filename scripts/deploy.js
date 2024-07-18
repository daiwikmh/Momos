
const hre = require("hardhat");

async function main() {
  const Momos = await ethers.getContractFactory("momos"); //fetching bytecode and ABI
  const momos = await Momos.deploy(); //creating an instance of our smart contract


  console.log("Deployed contract address:",`${momos.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
//
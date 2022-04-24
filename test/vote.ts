import { expect } from "chai";
import { ethers } from "hardhat";

describe("Vote", function () {
  let voter:any;
  this.beforeEach(async () => {
    const Vote = await ethers.getContractFactory("Vote");
    voter = await Vote.deploy();
    await voter.deployed();
  });
  it("Initial vote count should be zero", async function () {
    expect(await voter.getCount()).to.equal(0);
  });
  it("Voting should increase the vote count", async function () {
    await voter.vote();
    expect(await voter.getCount()).to.equal(1);
  });
});

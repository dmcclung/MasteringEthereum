const Faucet = artifacts.require("Faucet");

contract("Faucet", async accounts => {
    it("should withdraw", async () => {
        const contract = await Faucet.deployed();

        await expectBalanceToBe(contract.address, 0);       

        const trans = {
            from: accounts[0],
            to: contract.address,
            value: 10000
        }

        await web3.eth.sendTransaction(trans);

        await expectBalanceToBe(contract.address, 10000);        

        await contract.withdraw(10000);

        await expectBalanceToBe(contract.address, 0);        
    });    
});

async function expectBalanceToBe(address, expectedBalance) {
    const balance = await web3.eth.getBalance(address);
    assert.equal(expectedBalance, balance);
}
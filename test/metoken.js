const METoken = artifacts.require("METoken");

contract("METoken", async accounts => {
    it("should have balance", async () => {
        const contract = await METoken.deployed();

        const balance = await contract.balanceOf(accounts[0]);

        assert.equal(10000000000, balance);
    });

    it("should transfer", async () => {
        const contract = await METoken.deployed();

        const balance = await contract.balanceOf(accounts[0]);

        assert.equal(10000000000, balance);        

        await contract.transfer(accounts[2], 10000);
        const balanceAfterTransfer = await contract.balanceOf(accounts[0]);

        assert.equal(9999990000, balanceAfterTransfer);
    });

});

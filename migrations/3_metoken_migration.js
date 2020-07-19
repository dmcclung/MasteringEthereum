const METoken = artifacts.require("METoken");

module.exports = function(deployer) {
  deployer.deploy(METoken, 10000000000);
};

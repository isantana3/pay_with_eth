const OnlineStore = artifacts.require("OnlineStore");

module.exports = function(deployer) {
  deployer.deploy(OnlineStore);
};

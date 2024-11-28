const Movimientos = artifacts.require("Movimientos.sol");

module.exports = function (deployer) {
  deployer.deploy(Movimientos);
};


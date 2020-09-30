/* global artifacts */
const TWT = artifacts.require('TrustWalletToken')

module.exports = function (deployer) {
  return deployer.then(async () => {
    console.log('Deploying token...')
    const token = await deployer.deploy(TWT)
    console.log('TWT: ', token.address)
  })
}

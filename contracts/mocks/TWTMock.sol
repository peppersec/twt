// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "../TrustWalletToken.sol";
import "./Timestamp.sol";

contract TrustWalletTokenMock is TrustWalletToken, Timestamp {
  uint256 public chainId;

  function setChainId(uint256 _chainId) public {
    chainId = _chainId;
  }

  function chainID() public override view returns (uint256) {
    return chainId;
  }

  function blockTimestamp() public override(Timestamp, ERC20Permit) view returns (uint256) {
    return Timestamp.blockTimestamp();
  }
}

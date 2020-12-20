pragma solidity >=0.5.0;

// SPDX-License-Identifier: (Apache-2.0 AND CC-BY-4.0)
// Code is Apache-2.0 and docs are CC-BY-4.0
interface BPoolInterface {
    function getBalance(address token) external view returns (uint256);

    function getNormalizedWeight(address token) external view returns (uint256);

    function getSwapFee() external view returns (uint256);
}

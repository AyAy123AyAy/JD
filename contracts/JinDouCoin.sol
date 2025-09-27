// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title JinDouCoin - 開源 BSC 代幣
/// @notice BEP-20 標準代幣，MIT 許可證開源
contract JinDouCoin is ERC20, Ownable {
    constructor() ERC20("GoldenBeans", "JD") Ownable() {
        uint256 totalSupply = 1_000_000_000_000 * 10 ** decimals(); // 1兆顆代幣
        _mint(msg.sender, totalSupply);
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    constructor() ERC20 ("Alice Token", "ACE") {
        _mint(msg.sender, 1000000e18);//1,000,000 Tokens

    }

}
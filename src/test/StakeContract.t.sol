// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../StakeContract.sol";
import "./mock/MockERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract StakeContractTest is DSTest {
    StakeContract public stakeContract;
    MockERC20 public mockToken; 
    
   
    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();
        
    }
    function test_staking() public {
        uint amount=10e18;
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }
    function test_staking_tokens_fuzz(uint256 amount) public {
      
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
        
    }
    
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Multi1 {
  function echidna_alwaystrue() public pure returns (bool){
    return(true);
  }
}

contract Multi2 {
  function echidna_revert_always() public pure returns (bool){
    revert();
  }
}
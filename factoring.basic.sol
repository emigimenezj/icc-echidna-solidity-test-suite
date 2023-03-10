// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Factoring {
  event Flag(bool);

  bool private flag0 = true;
  bool private flag1 = true;

  function set0(int val) public returns (bool){
    if (val == 5) 
      flag0 = false;
  }

  function set1(int val) public returns (bool){
    if (val * 5 == 15 && !flag0) 
      flag1 = false;
  }

  function echidna_FailsOnFactorizationFound() public returns (bool){
    emit Flag(flag0);
    emit Flag(flag1);
    return(flag1);
  }
}
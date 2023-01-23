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

  bool private flag2 = true;
  bool private flag3 = true;

  function set2(int val) public returns (bool){
    if (val == 139) 
      flag2 = false;
  }

  function set3(int val) public returns (bool){
    if (val * 139 == 14039 && !flag2) 
      flag3 = false;
  }

  bool private flag4 = true;
  bool private flag5 = true;

  function set4(int val) public returns (bool){
    if (val == 104723) 
      flag4 = false;
  }

  function set5(int val) public returns (bool){
    if (val * 104723 == 10967535067 && !flag4) 
      flag5 = false;
  }

  function echidna_FailsOnFactorizationFound1() public returns (bool){
    emit Flag(flag0);
    emit Flag(flag1);
    return(flag1);
  }

  function echidna_FailsOnFactorizationFound2() public returns (bool){
    emit Flag(flag2);
    emit Flag(flag3);
    return(flag3);
  }

  function echidna_FailsOnFactorizationFound3() public returns (bool){
    emit Flag(flag4);
    emit Flag(flag5);
    return(flag5);
  }
}
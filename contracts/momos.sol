// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract momos{
  struct Memo{
  string name;
  string MESSAGE;
  uint timestamp;
  address from;
  }


  Memo[] public memos;


  address payable owner;
  constructor(){
    owner = payable(msg.sender);
  }

  function buymomos(string calldata name, string calldata message) external payable{
    require(msg.value>0,"cheapstake please pay");
    owner.transfer(msg.value);
    memos.push(Memo(name, message, block.timestamp, msg.sender));

  }

  function getmemos() public view returns(Memo[] memory){
  return memos;
  }
}
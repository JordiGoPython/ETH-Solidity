// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
  uint private simpleInt;

  function getValue() public view returns (uint) {
     return simpleInt;
  }

  function setValue(uint _value) public {
    simpleInt = _value; 
  }
}

contract Client {

  function UseNewKeyword(bytes32 _salt) public returns (uint) {
   // Salt adds randomness while generating contract addresses and it becomes more difficult to predict the next generated address by the parent contract
   HelloWorld myObj = (new HelloWorld){salt: _salt}();
   myObj.setValue(10);
   return myObj.getValue();
  }
}
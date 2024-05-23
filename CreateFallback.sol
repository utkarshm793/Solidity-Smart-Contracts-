// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract learnFallback{

uint public num=34;
function addition() public {
    num=98;
}
fallback() external{
    num=45;
}

}
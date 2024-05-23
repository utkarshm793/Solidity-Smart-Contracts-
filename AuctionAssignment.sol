// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
contract Auctionitem{
    struct Item{

uint ID;
string name;
address highestbidder;
string description;
uint highestbid;

    }
    Item[5] public Item1;
    mapping(uint=>Item[]) private _items;
    mapping(address=>uint) private biddersid;


    function placeABid(uint256 index,uint _id,address _highestbidder, uint _amount) external {
        require(_amount > Item1[index].highestbid,"Can't place a bid");
       Item1[index].ID=_id;
       Item1[index].highestbidder=_highestbidder;
       Item1[index].highestbid=_amount;
    }
   function placeABid() public view returns(Item[5] memory) { 
 return Item1;


}}
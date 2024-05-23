// SPDX-License-Identifier:MIT
pragma solidity >=0.5.0 <0.9.0;
contract Twitterasiignment{

struct Tweets{

uint id;
string content;
address authaddr;
uint tiOfTweet;

}

struct messagess{

uint id;
string content;
address sender;
address receiver;
uint messagetime;

}

mapping(uint=>Tweets) public mytweets;
mapping(address=>uint[]) public tweetsOf;
mapping(address=>messagess[]) public conversation;
mapping(address=>address[]) public following;
mapping(address=>mapping(address=>bool)) public operators;

uint nextId;
uint nextMessageId;

function postTweets(address _from, string memory _content) public{
  mytweets[nextId]=Tweets(nextId,_content,_from,block.timestamp);
  nextId++;
}
function talkMore(address _from,address _to, string memory _content) public{
  conversation[_from].push(messagess(nextMessageId,_content,_from, _to,block.timestamp));
  nextId++;
}

}
// SPDX-License-Identifier:MIT
pragma solidity >=0.5.0 <0.9.0;



interface IERC20 {
   
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);

 
    function totalSupply() external view returns (uint256);

    
    function balanceOf(address account) external view returns (uint256);

  
     
    function transfer(address to, uint256 value) external returns (bool);

   
    function allowance(address owner, address spender) external view returns (uint256);

   
    function approve(address spender, uint256 value) external returns (bool);

 
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}
contract UTKARSH is IERC20{
    
string public name="utkarsh";
string public symbol="UTK";
uint public decimal=0;
address public founder;
uint public totalsupply;

mapping(address=>mapping(address=>uint)) allowed;
mapping(address=>uint) balances;

constructor(){
    founder=msg.sender;
    totalsupply=1000;
    balances[founder]=totalsupply;
}

    function totalSupply() external view returns (uint256){
        
    }

    
    function balanceOf(address account) external view returns (uint256){
        return balances[account];
    }

  
  // like google pay   
    function transfer(address to, uint256 value) external returns (bool){
        require(value>0 ,"Amount should be greater then 0.");
        require( balances[msg.sender]>=value,"You don't have enough balance");
        balances[msg.sender]-=totalsupply;
        balances[to]+=totalsupply;
        emit Transfer( msg.sender, to, value);
        return true;
        
    
    }

   
    function allowance(address owner, address spender) external view returns (uint256){
        return allowed[owner][spender];
    }

   // writing a cheque
    function approve(address spender, uint256 value) external returns (bool){
     require(value>0 ,"Amount should be greater then 0.");
        require( balances[msg.sender]>=value,"You don't have enough balance");
        allowed[msg.sender][spender] = value;
        
    emit Approval(msg.sender, spender, value);
        return true; 
    }

 //cashing the cheque
    function transferFrom(address from, address to, uint256 value) external returns (bool){
             require(value>0 ,"Amount should be greater then 0.");
        require( balances[msg.sender]>=value,"You don't have enough balance");
        allowed[from][to] = value;
        balances[from]-= value;
        balances[to]+= value;
        return true;
    }

function destroyToken() public {

    
}


}
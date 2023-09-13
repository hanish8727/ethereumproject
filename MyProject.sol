
pragma solidity 0.8.18;


contract MyToken {

    string public tokenName="META";
    string public tokenAbbrv="Mta";

    uint public totalSupply = 0;
  

    mapping(address => uint )public balances;



    function deposit (address _address,uint _value) public 
    {
        totalSupply += _value;
        balances[_address] += _value;
    }

  
     function withdraw (address _address,uint _value) public 
    {
        if(balances[_address] >= _value)
        {
        totalSupply -= _value;
        balances[_address] -= _value;
        }
    }

}

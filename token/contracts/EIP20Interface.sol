pragma solidity ^0.4.19;

// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
contract EIP20Interface {
    function name() view public returns (string);
    function symbol() view public returns (string);
    function decimals() view public returns (uint8);
    function totalSupply() view public returns (uint256);
    function balanceOf(address _owner) view public returns (uint256 balance);
    function transfer(address _to, uint256 _value) public returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    function approve(address _spender, uint256 _value) public returns (bool success);
    function allowance(address _owner, address _spender) view public returns (uint256 remaining);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

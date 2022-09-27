// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

struct TokenStorage{

        mapping(address => uint256) _balances;

        mapping(address => mapping(address => uint256)) _allowances;
    
        uint256 _totalSupply;
    
        string _name;
        string _symbol;
        uint _currentSupply;

}

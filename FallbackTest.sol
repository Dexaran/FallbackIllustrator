// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FallbackTest {
    
    uint256 a = 10;
    uint256 b = 1000;
    
    event Foo(uint256 indexed _foo);
    
    function set_I(uint256 _a) public
    {
        a = _a;
    }
    
    fallback() payable external
    {
        for (uint256 i = 0; i<a; i++)
        {
            b += i;
            emit Foo(b);
        }
    }
}

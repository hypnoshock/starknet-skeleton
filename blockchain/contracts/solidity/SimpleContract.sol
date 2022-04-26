// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleContract
{
    uint256 public a;
    uint256 public b;

    function setA(uint256 val) public
    {
        a = val;
    }

    function setB(uint256 val) public
    {
        b = val;
    }
}

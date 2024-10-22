//  ░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓███████▓▒░  
// ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
// ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
// ░▒▓█▓▒▒▓███▓▒░▒▓█▓▒░      ░▒▓███████▓▒░  
// ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
// ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
//  ░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓███████▓▒░  

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GCB is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    // initialSupply    1300000000 for BNB Chain
    // initialSupply    1200000000 for Tron Chain
    uint256 initialSupply = 1200000000;

    constructor()
        ERC20("GCB", "GCB")
        ERC20Permit("GCB")
        Ownable(msg.sender)
    {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}

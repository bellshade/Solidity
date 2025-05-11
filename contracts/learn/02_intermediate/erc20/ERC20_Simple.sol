// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Import kontrak ERC-20
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Kontrak token sederhana
contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        // Mint 1 juta token (dengan 8 desimal) langsung ke pembuat kontrak
        _mint(msg.sender, 1_000_000 * 10 ** 8);
    }
}

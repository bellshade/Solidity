// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Import kontrak ERC-721
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Kontrak NFT sederhana
contract MyNFT is ERC721 {
    constructor() ERC721("MyNFT", "MNFT") {
        // Mint 1 NFT langsung ke pembuat kontrak
        _mint(msg.sender, 1);
    }
}

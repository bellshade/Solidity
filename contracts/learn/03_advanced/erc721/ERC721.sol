// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Kontrak NFT sesuai standar ERC-721
contract MyNFT {
    // Nama dan simbol NFT
    string public name = "MyNFT";
    string public symbol = "MNFT";

    // Mapping dari tokenId ke alamat pemilik
    mapping(uint256 => address) private _owners;

    // Mapping dari alamat ke jumlah NFT yang dimiliki
    mapping(address => uint256) private _balances;

    // Mapping dari tokenId ke URI metadata
    mapping(uint256 => string) private _tokenURIs;

    // Token ID saat ini, akan bertambah setiap kali mint
    uint256 private _currentTokenId = 0;

    // Event saat NFT dibuat dan ditransfer
    event Mint(address indexed to, uint256 indexed tokenId);
    event Transfer(
        address indexed from,
        address indexed to,
        uint256 indexed tokenId
    );

    // Fungsi internal untuk mencetak token baru
    function _mint(address to) internal returns (uint256) {
        require(to != address(0), "ERC721: tidak bisa mint ke alamat kosong");

        _currentTokenId++;
        uint256 tokenId = _currentTokenId;

        _owners[tokenId] = to;
        _balances[to] += 1;

        emit Mint(to, tokenId);
        emit Transfer(address(0), to, tokenId);
        return tokenId;
    }

    // Fungsi eksternal untuk minting NFT (dipanggil oleh siapa saja)
    function mint(address to) external returns (uint256) {
        return _mint(to);
    }

    // Mendapatkan pemilik dari tokenId tertentu
    function ownerOf(uint256 tokenId) public view returns (address) {
        require(
            _owners[tokenId] != address(0),
            "ERC721: permintaan pemilik untuk token yang tidak ada"
        );
        return _owners[tokenId];
    }

    // Mendapatkan jumlah token yang dimiliki oleh alamat tertentu
    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }

    // Menetapkan URI untuk token tertentu (hanya oleh pemilik token)
    function setTokenURI(uint256 tokenId, string memory uri) external {
        require(
            ownerOf(tokenId) == msg.sender,
            "ERC721: pemanggil bukan pemilik token"
        );
        _tokenURIs[tokenId] = uri;
    }

    // Mengambil URI metadata dari token
    function tokenURI(uint256 tokenId) external view returns (string memory) {
        require(
            _owners[tokenId] != address(0),
            "ERC721: permintaan URI untuk token yang tidak ada"
        );
        return _tokenURIs[tokenId];
    }

    // Fungsi untuk mentransfer NFT dari satu alamat ke alamat lain
    function transferFrom(address from, address to, uint256 tokenId) external {
        require(
            ownerOf(tokenId) == from,
            "ERC721: transfer dari pemilik yang salah"
        );
        require(to != address(0), "ERC721: tidak bisa transfer ke alamat kosong");

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);
    }
}

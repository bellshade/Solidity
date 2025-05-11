// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Kontrak token sesuai standar ERC-20
contract MyToken {
    // Nama dan simbol token
    string public name = "MyToken";
    string public symbol = "MTK";

    // Jumlah desimal token dan total supply
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // Mapping untuk menyimpan saldo setiap alamat
    mapping(address => uint256) public balanceOf;

    // Mapping untuk menyimpan jumlah allowance (izin transfer) antar alamat
    mapping(address => mapping(address => uint256)) public allowance;

    // Event yang dipicu saat transfer dan approval token 
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // Konstruktor: menetapkan total supply awal ke alamat deployer
    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
    }

    // Fungsi untuk mengirim token ke alamat lain
    function transfer(address to, uint256 amount) public returns (bool) {
        require(to != address(0), "ERC20: tidak bisa transfer ke alamat kosong");
        require(balanceOf[msg.sender] >= amount, "ERC20: saldo tidak mencukupi");

        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;

        emit Transfer(msg.sender, to, amount);
        return true;
    }

    // Fungsi untuk menyetujui alamat lain agar bisa menggunakan token Anda
    function approve(address spender, uint256 amount) public returns (bool) {
        require(spender != address(0), "ERC20: tidak bisa menyetujui alamat kosong");

        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // Fungsi yang memungkinkan alamat lain mentransfer token atas nama Anda
    function transferFrom(address from, address to, uint256 amount) public returns (bool) {
        require(from != address(0), "ERC20: tidak bisa transfer dari alamat kosong");
        require(to != address(0), "ERC20: tidak bisa transfer ke alamat kosong");
        require(balanceOf[from] >= amount, "ERC20: saldo tidak mencukupi");
        require(allowance[from][msg.sender] >= amount, "ERC20: jumlah izin tidak mencukupi");

        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        allowance[from][msg.sender] -= amount;

        emit Transfer(from, to, amount);
        return true;
    }
}

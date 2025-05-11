// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arithmetic {
    // Fungsi untuk melakukan penjumlahan
    function tambah(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Fungsi untuk melakukan pengurangan
    function kurang(uint a, uint b) public pure returns (uint) {
        require(a >= b, "Hasil pengurangan tidak bisa negatif.");
        return a - b;
    }

    // Fungsi untuk melakukan perkalian
    function kali(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Fungsi untuk melakukan pembagian
    function bagi(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Pembagi tidak boleh nol!");
        return a / b;
    }

    // Fungsi untuk melakukan operasi modulo
    function modulo(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Pembagi tidak boleh nol!");
        return a % b;
    }
}

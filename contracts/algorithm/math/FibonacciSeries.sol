// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FibonacciSeries {

    // Fungsi untuk mencetak Deret Fibonacci hingga indeks ke-n
    function getFibonacciSeries(uint n) public pure returns (uint[] memory) {

        // Membuat array untuk menyimpan deret Fibonacci
        uint[] memory angka = new uint[](n + 1);

        // Jika n kurang dari 0, tambahkan angka 0
        if (n >= 0) {
            angka[0] = 0;
        }

        // Jika n lebih besar dari 0, tambahkan angka 1
        if (n >= 1) {
            angka[1] = 1;
        }

        // Loop untuk menghitung deret Fibonacci
        for (uint i = 2; i <= n; i++) {
            angka[i] = angka[i - 1] + angka[i - 2];
        }

        // Kembalikan deret Fibonacci
        return angka;
    }
}

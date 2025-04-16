// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeChecker {

    // Fungsi untuk mengecek apakah sebuah angka adalah bilangan prima
    function isPrime(uint angka) public pure returns (bool) {

        // Jika angka kurang dari 2, maka bukan bilangan prima
        if (angka < 2) {
            return false;
        }

        // Cek apakah angka dapat dibagi oleh angka-angka selain 1 dan angka itu sendiri
        for (uint i = 2; i * i <= angka; i++) {
            if (angka % i == 0) {
                return false;
            }
        }

        return true;
    }
}

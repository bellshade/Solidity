// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fibonacci {

    // Fungsi rekursif untuk menghitung Fibonacci ke-n
    function getFibonacci(uint n) public pure returns (uint) {

        // Jika n adalah 0, maka kembalikan 0
        if (n == 0) {
            return 0;
        } 
        
        // Jika n adalah 1, maka kembalikan 1
        else if (n == 1) {
            return 1;
        } 
        
        // Jika n lebih besar dari 1, maka kembalikan hasil penjumlahan dari getFibonacci(n - 1) dan getFibonacci(n - 2)
        else {
            return getFibonacci(n - 1) + getFibonacci(n - 2);
        }
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Looping {
    
    // Fungsi perulangan for
    function forLoop() public pure returns (uint) {
        uint hasil = 0;
        for (uint i = 1; i <= 10; i++) {
            hasil += i;
        }
        return hasil;
    }

    // Fungsi perulangan while
    function whileLoop() public pure returns (uint) {
        uint hasil = 0;
        uint i = 1;
        while (i <= 10) {
            hasil += i;
            i++;
        }
        return hasil;
    }

    // Fungsi perulangan do-while
    function doWhileLoop() public pure returns (uint) {
        uint hasil = 0;
        uint i = 1;
        do {
            hasil += i;
            i++;
        } while (i <= 10);
        return hasil;
    }
}

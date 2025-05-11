// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Condition {
    uint public balance = 100;

    // Fungsi untuk memeriksa apakah saldo cukup
    function checkBalance(uint _check) public view returns (string memory) {
        if (_check > balance) {
            return "Saldo tidak cukup";
        } else {
            return "Saldo cukup";
        }
    }
}

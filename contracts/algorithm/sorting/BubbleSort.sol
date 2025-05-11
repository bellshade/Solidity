// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BubbleSort {
    // Array angka
    uint[] internal angka = [4, 1, 3, 2];

    // Fungsi untuk mengurutkan array menggunakan metode Bubble Sort
    function sort() public {
        // Loop luar untuk jumlah elemen
        for (uint i = 0; i < angka.length; i++) {
            // Loop dalam untuk membandingkan elemen berurutan
            for (uint j = 0; j < angka.length - 1; j++) {
                // Jika elemen saat ini lebih besar dari elemen berikutnya, tukar
                if (angka[j] > angka[j + 1]) {
                    // Menukar posisi menggunakan tuple assignment
                    (angka[j], angka[j + 1]) = (angka[j + 1], angka[j]);
                }
            }
        }
    }

    // Fungsi untuk mengembalikan seluruh isi array
    function getAngka() public view returns (uint[] memory) {
        return angka;
    }
}

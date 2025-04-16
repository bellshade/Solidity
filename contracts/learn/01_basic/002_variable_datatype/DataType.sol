// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataType {
    // Tipe data dasar
    bool public benar = true;
    uint public angkaPositif = 123;
    int public angkaNegatif = -123;
    address public alamat = 0x1234567890123456789012345678901234567890;
    bytes32 public dataByte = "Data dalam bytes32";
    string public teks = "Ini adalah teks";

    // Array
    uint[] public daftarAngka;

    // Mapping
    mapping(address => uint) public saldoPengguna;

    // Struct
    struct Pengguna {
        string nama;
        uint umur;
        address alamatDompet;
    }

    // Contoh Penggunaan Struct
    Pengguna public penggunaBaru;

    // Enum
    enum Status {
        Menunggu,
        Aktif,
        Selesai
    }

    // Contoh Penggunaan Enum
    Status public statusSekarang;

    constructor() {
        daftarAngka.push(1);
        saldoPengguna[msg.sender] = 100;
        penggunaBaru = Pengguna("Fitra", 23, msg.sender);
        statusSekarang = Status.Aktif;
    }
}

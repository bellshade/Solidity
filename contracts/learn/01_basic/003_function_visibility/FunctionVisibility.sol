// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionVisibility {
    // Visibilitas variabel = public, private, internal (default)
    string public publicMessage = "Ini public";
    string private privateMessage = "Ini private";
    string internal internalMessage = "Ini internal";
    string externalMessage = "Ini external";

    // Visibilitas fungsi PUBLIC - bisa dipanggil dari luar atau dalam kontrak
    function getPublicMessage() public view returns (string memory) {
        return publicMessage;
    }

    // Visibilitas fungsi PRIVATE - hanya bisa dipanggil dari dalam kontrak ini
    function getPrivateMessage() private view returns (string memory) {
        return privateMessage;
    }

    // Visibilitas fungsi INTERNAL - bisa dipanggil dari kontrak ini atau turunannya
    function getInternalMessage() internal view returns (string memory) {
        return internalMessage;
    }

    // Visibilitas fungsi EXTERNAL - hanya bisa dipanggil dari luar kontrak (bukan dari fungsi internal)
    function getExternalMessage() external view returns (string memory) {
        return externalMessage;
    }

    // ==============================================
    // TEST CASE MEMANGGIL FUNGSI
    // ==============================================

    // Fungsi untuk menguji pemanggilan fungsi public
    function callPublicMessage() public view returns (string memory) {
        return getPublicMessage(); // SUCCESS: bisa memanggil fungsi public dari dalam kontrak
    }

    // Fungsi untuk menguji pemanggilan fungsi private
    function callPrivateMessage() public view returns (string memory) {
        return getPrivateMessage(); // SUCCESS: bisa memanggil fungsi private dari dalam kontrak
    }

    // Fungsi untuk menguji pemanggilan fungsi internal
    function callInternalMessage() public view returns (string memory) {
        return getInternalMessage(); // SUCCESS: bisa memanggil fungsi internal dari dalam kontrak
    }

    // Fungsi untuk menguji pemanggilan fungsi external
    // function callExternalMessage() public view returns (string memory) {
    //     return getExternalMessage(); // ERROR: tidak bisa memanggil fungsi external dari dalam kontrak
    // }
}

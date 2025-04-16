# Panduan Berkontribusi

## Kontributor

Kami sangat senang dan berterima kasih bila anda ikut berkontribusi dalam repositori ini.
Semua boleh ikut berkontribusi walaupun hal kecil dengan pengecualian sebagai berikut:

- Hasil pekerjaan kamu adalah buatan kamu sendiri dan tidak ada hak cipta dari orang lain.
  - Jika ditemukan kesamaan, maka tidak akan kami `merge`.
- Hasil kerja kamu akan berlisensi [MIT](LICENSE) ketika permintaan pull kamu sudah di merged.

## Standar Pengembangan

- Hasil kerja kamu wajib mengikuti standar dan style koding dari kami.
- Penggunaan nama file bersifat `PascalCase` untuk kontrak dan `camelCase` untuk variabel dan fungsi.
- Menggunakan event untuk logging dan debugging.
- Menghindari penggunaan library eksternal yang tidak perlu (jika dibutuhkan silahkan diskusi di [issue](https://github.com/bellshade/Solidity/issues)).

## Apa Itu Smart Contract?

Smart Contract adalah program yang berjalan di blockchain Ethereum yang terdiri dari beberapa komponen utama:

- State Variables: Variabel yang menyimpan data di blockchain
- Functions: Fungsi yang dapat dipanggil untuk berinteraksi dengan kontrak
- Events: Mekanisme untuk logging dan notifikasi
- Modifiers: Pengubah perilaku fungsi

Smart Contract harus:

- Memiliki nama kontrak dan fungsi yang intuitif
- Menggunakan konvensi penamaan Solidity yang standar
- Memiliki dokumentasi yang jelas dengan NatSpec comments
- Mengimplementasikan keamanan yang baik
- Menggunakan gas secara efisien

## Testing

Untuk mengikuti standar dari kode kami, kami menggunakan testing framework untuk mengecek kontrak

### Testing Bawaan

Kita menggunakan Hardhat atau Truffle untuk testing kontrak. Pastikan untuk menginstall dependencies terlebih dahulu:

```bash
npm install
# or yarn install
```

Untuk menjalankan test:

```bash
npx hardhat test
# or npx truffle test
```

Untuk mengecek linting kode, jalankan:

```bash
npm run lint
# or yarn lint
```

Testing penting bagi kami untuk mengecek apakah kontrak kamu aman dan berfungsi dengan baik.

## Pull Request

### Pull Request Yang Baik

- Lakukan fork pada repository kami
- Setelah melakukan fork kamu dibebaskan untuk mengubah atau menambah kontrak
  - Untuk pull request merubah diusahakan kamu menerapkan solusi yang lebih baik dan lebih aman
- Setelah merubah, menambah, atau perbaikan dokumentasi, usahakan kamu membuat branch baru

```bash
git checkout -b <branch_name>
git add .
git commit -m "add: menambahkan kontrak baru"
```

- Lakukan push ke branch kamu dan kemudian open pull request

### Pesan Commit

Pesan / message commit harus mengikuti conventional commit. Kami menggunakan bot label agar tidak susah dalam labeling.
Berikut adalah jenis - jenis pesan commit.

- `fix:` untuk memperbaiki bug (label `bug`).
- `feat:` untuk menambahkan kontrak terbaru (label `enhancement`).
- `docs:` untuk menambahkan dokumentasi (label `documentation`).
- `fix(UnknownScope):` memperbaiki kontrak yang sudah ada (label `fix`).

Referensi:
[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

### Contoh penggunaan

```bash
git commit -m "docs: menambahkan dokumentasi"
```

```bash
git commit -m "feat: menambahkan kontrak terbaru"
```

Pull request `merged` jika:

- Mengikuti standar dan arahan dari `CONTRIBUTING.md`
- Lulus test dan cek keamanan
- Mengikuti best practices Solidity

## Tambahan

- Jika ada kendala atau masalah dalam pull request, kamu bisa laporkan masalah pada [issue](https://github.com/bellshade/Solidity/issues)
- Jika ada test yang tidak lewat atau gagal, kami akan mengecek kembali perubahan.

Untuk pull request kami sarankan untuk menjelaskan secara detail yang kamu ubah atau tambahkan, dan bersikap sopan, serta selalu berterima kasih, itu salah satu bentuk tata krama yang baik terhadap sesama contributor dan programmer lainnya. Terima kasih sudah berkontribusi di **Solidity**.

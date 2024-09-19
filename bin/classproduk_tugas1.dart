// Siti Fatimah Az Zahrah
// 2327250055

class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon() {
    double totalTanpaDiskon = hitungTotalHargaTanpaDiskon();
    double totalDiskon = totalTanpaDiskon * (diskon / 100);
    return totalTanpaDiskon - totalDiskon;
  }

  void tampilkanInformasiProduk() {
    print('Nama Produk  : $namaProduk');
    print('Harga Satuan : Rp. ${harga.toStringAsFixed(0)}');
    print('Jumlah       : $jumlah');
    print('Diskon       : ${diskon.toStringAsFixed(0)}%');
    print('');
    print(
        'Total Harga Tanpa Diskon   : Rp. ${hitungTotalHargaTanpaDiskon().toStringAsFixed(0)}');
    print(
        'Total Harga Setelah Diskon : Rp. ${hitungTotalHargaSetelahDiskon().toStringAsFixed(0)}');
  }
}

void main() {
  Produk produk = Produk('Kamera', 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}

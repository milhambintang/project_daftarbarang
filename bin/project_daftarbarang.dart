void main() {
  List<Map<String, dynamic>> daftarBarang = [
    {'nama': 'Pensil', 'harga': 2000},
    {'nama': 'Buku', 'harga': 5000},
    {'nama': 'Penghapus', 'harga': 1000},
  ];
  
  //Menghitung Barang
  print('=== Program Kasir Mini ===');
  print('Daftar barang:');
  for (int i = 0; i < daftarBarang.length; i++) {
    print('${i + 1}. ${daftarBarang[i]['nama']} - Rp${daftarBarang[i]['harga']}');
  }

  stdout.write('\nPilih nomor barang: ');
  int pilihan = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah: ');
  int jumlah = int.parse(stdin.readLineSync()!);

  var barang = daftarBarang[pilihan - 1];
  int total = barang['harga'] * jumlah;

  print('\n=== Struk Pembelian ===');
  print('Barang: ${barang['nama']}');
  print('Jumlah: $jumlah');
  print('Total: Rp$total');
  print('=======================');

}
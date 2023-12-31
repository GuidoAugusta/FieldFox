class Lapangan {
  String name;
  String alamatSingkat;
  String alamatLengkap;
  String tentang;
  String jmlCourt;
  String jamOperasional;
  String kategori;
  String hargaMulaiDari;
  List<String> imageAsset;

  Lapangan({
    required this.name,
    required this.alamatSingkat,
    required this.alamatLengkap,
    required this.tentang,
    required this.jmlCourt,
    required this.jamOperasional,
    required this.kategori,
    required this.hargaMulaiDari,
    required this.imageAsset,
  });
}

var lapanganList = [
  Lapangan(
      name: 'Gor Badminton Margajaya',
      alamatSingkat: 'Maguwoharjo, Kec. Depok',
      alamatLengkap:
          'Jl. Kadisoka, Tajem, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281',
      tentang:
          'Gor margajaya adalah lapangan badminton yang ada di Yogyakarta dan memiliki fasilitas umum seperti Tempat Parkir, Wifi, Toilet dan Kantin.\n\nKami memiliki keunggulan dimana harga kami yang bersahabat bagi pelajar atau mahasiswa sehingga mereka dapat bermain badminton dengan baik.',
      jmlCourt: '4',
      jamOperasional: '08:00 - 23:00',
      kategori: 'Badminton',
      hargaMulaiDari: 'RP 30.000',
      imageAsset: [
        'assets/margajaya.png',
        'assets/margajaya.png',
        'assets/margajaya.png',
      ]),
  Lapangan(
      name: 'Lapangan Basket Amikom',
      alamatSingkat: 'Condongcatur, Kec. Depok',
      alamatLengkap:
          'Jl. Ring Road Utara, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281',
      tentang:
          'Lapangan Basket Universitas Amikom Yogyakarta adalah lapangan basket outdoor yang dapat diakses oleh mahasiswa Amikom Yogyakarta',
      jmlCourt: '1',
      jamOperasional: '07:00 - 23:00',
      kategori: 'Basket',
      hargaMulaiDari: 'Gratis',
      imageAsset: [
        'assets/basketAmikom.png',
        'assets/basketAmikom.png',
        'assets/basketAmikom.png',
      ]),
  Lapangan(
      name: 'Telaga 3 Futsal',
      alamatSingkat: 'Condongcatur, Kec. Depok',
      alamatLengkap:
          'Jl. Gempol Raya, Gempol, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281',
      tentang:
          'Telaga 3 Futsal merupakan lapangan futsal yang sering dipakai untuk bermain futsal. Buka dari jam 06:00 - 24:00. Untuk pemesanan juga dapat lewat WA.',
      jmlCourt: '2',
      jamOperasional: '06:00 - 24:00',
      kategori: 'Futsal',
      hargaMulaiDari: 'RP 40.000',
      imageAsset: [
        'assets/telaga3futsal.png',
        'assets/telaga3futsal.png',
        'assets/telaga3futsal.png',
      ]),
];

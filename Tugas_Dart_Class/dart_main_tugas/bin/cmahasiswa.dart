import 'cperson.dart';

class Mahasiswa extends Person {
  int sks = 2;
  String status = 'aktif';
  int ips = 0;
  int ipk = 0;

  Mahasiswa(String? nama, String? statusUniv, int sks, String status, int ips,
      int ipk)
      : super(nama, statusUniv) {
    this.sks = sks;
    this.status = status;
    this.ipk = ipk;
    this.ips = ips;
  }

  get IPK {
    return ipk;
  }
}

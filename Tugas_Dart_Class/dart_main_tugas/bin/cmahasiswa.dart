import 'cperson.dart';

class Mahasiswa extends Person {
  int sks = 2;
  int status = 1;
  int ips = 0;
  int ipk = 0;

  Mahasiswa(String? nama, int sks, int status, int ips, int ipk) : super(nama) {
    this.sks = sks;
    this.status = status;
    this.ipk = ipk;
    this.ips = ips;
  }

  get IPK {
    return ipk;
  }
}

import 'cperson.dart';

class Staf extends Person {
  int tunjKehadiran = 0;
  int cuti = 0;
  int gajidasar = 3400000;

  Staf(String? nama, int tunjKehadiran, int cuti, int gajidasar) : super(nama) {
    this.tunjKehadiran = tunjKehadiran;
    this.cuti = cuti;
  }

  get Gaji {
    return (tunjKehadiran + gajidasar);
  }
}

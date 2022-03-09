import 'cperson.dart';

class DosenTetap extends Person {
  int tunjKehadiran = 0;
  int sks = 0;
  int gajidasar = 3400000;

  DosenTetap(String? nama, String? statusUniv, int tunjKehadiran, int gajidasar,
      int sks)
      : super(nama, statusUniv) {
    this.tunjKehadiran = tunjKehadiran;
    this.gajidasar = gajidasar;
    this.sks = sks;
  }

  get Gaji {
    return ((sks * 40000) + tunjKehadiran + gajidasar);
  }
}

class DosenTamu extends Person {
  int sks = 0;

  DosenTamu(String? nama, String? statusUniv, int sks)
      : super(nama, statusUniv) {
    this.sks = sks;
  }
  get Gaji {
    return (sks * 40000);
  }
}

class DosenLB extends Person {
  int sks = 0;
  int gajidasar = 3400000;

  DosenLB(String? nama, String? statusUniv, int sks, int gajidasar)
      : super(nama, statusUniv) {
    this.gajidasar = gajidasar;
    this.sks = sks;
  }

  get Gaji {
    return ((sks * 40000) + gajidasar);
  }
}

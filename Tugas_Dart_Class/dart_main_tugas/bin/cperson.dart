class Person {
  String? _nama;

  Person(this._nama);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  String get nama => this._nama!;
}

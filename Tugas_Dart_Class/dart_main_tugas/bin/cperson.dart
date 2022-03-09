class Person {
  String? _nama;
  String? _statusUniv;

  Person(this._nama, this._statusUniv);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  String get nama => this._nama!;

  set statusUniv(String dtStatusUniv) {
    _statusUniv = dtStatusUniv;
  }

  String get statusUniv => this._statusUniv!;
}

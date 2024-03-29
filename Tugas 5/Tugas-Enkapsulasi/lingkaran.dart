class Lingkaran {
  double _phi = 3.14;
  double? _r;

  void setJariJari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _r = value;
  }

  double getJariJari() {
    return _r!;
  }

  double getLuas() {
    return _phi * (_r! * _r!);
  }
}

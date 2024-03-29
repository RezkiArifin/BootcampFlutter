class Titan {
  int? _powerPoint;

  int get PowerPoint => _powerPoint!;
  set PowerPoint(int value) {
    if (value < 5) {
      value = 5;
    }
    _powerPoint = value;
  }
}

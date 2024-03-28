void main() {
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
}

rangeWithStep(startNum, finishNum, step) {
  var angka = [];

  if (startNum < finishNum) {
    while (startNum <= finishNum) {
      angka.add(startNum);
      startNum += step;
    }
  } else if (startNum > finishNum) {
    while (startNum >= finishNum) {
      angka.add(startNum);
      startNum -= step;
    }
  }
  return angka;
}

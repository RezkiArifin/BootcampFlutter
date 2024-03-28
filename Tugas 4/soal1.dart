void main() {
  print(range(1, 10));
  print(range(11, 18));
}

range(startNum, finishNum) {
  var angka = [];

  if (startNum < finishNum) {
    while (startNum <= finishNum) {
      angka.add(startNum);
      startNum++;
    }
  } else if (startNum > finishNum) {
    while (startNum >= finishNum) {
      angka.add(startNum);
      startNum--;
    }
  }
  return angka;
}

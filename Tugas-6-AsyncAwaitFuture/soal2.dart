Future delayedPrint(int sec, String message) {
  final duration = Duration(seconds: sec);
  return Future.delayed(duration).then((value) => message);
}

main(List<String> args) {
  print("Life");
  delayedPrint(1, "never flat").then((status) {
    print(status);
  });
  print("is");
}

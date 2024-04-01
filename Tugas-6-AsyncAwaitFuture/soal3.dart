void main(List<String> args) async {
  print("Ready. Sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async {
  String subs = "pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 5), () => (subs));
}

Future<String> line2() async {
  String subs = "pernahkah kau merasa.......";
  return await Future.delayed(Duration(seconds: 3), () => (subs));
}

Future<String> line3() async {
  String subs = "pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 2), () => (subs));
}

Future<String> line4() async {
  String subs = "Hatimu hampa, pernahkah kau merasa hatimu kosong......";
  return await Future.delayed(Duration(seconds: 1), () => (subs));
}

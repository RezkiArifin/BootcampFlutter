void main(List<String> args) async {
  var h = Human();

  print("luffy");
  print("zoro");
  print("killer");
  print(h.name);
  await h.getData();
  print("name 3: ${h.name}");
}

class Human {
  String name = "nama character one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "hilmy";
    print("get data [done]");
  }
}

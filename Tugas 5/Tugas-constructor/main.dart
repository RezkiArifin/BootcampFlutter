import 'employee.dart';

void main(List<String> args) {
  var myData = new Employee(
      id: 112, name: "Rezki Fauzan Arifin", departement: "Software Engineer");

  print(myData.id);
  print(myData.name);
  print(myData.departement);
}

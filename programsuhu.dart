import 'dart:io';
void main(List<String> arguments){
  stdout.write("Masukkan suhu dalam celcius ! ");
  var suhu = num.parse(stdin.readLineSync()!);

  //konversi
  var fahrenheit = (9/5 * suhu + 32);
  var kelvin = (suhu + 273);
  var reamur = (4/5 * suhu);

  print("Suhu dalam celcius : $suhu");
  print("Suhu dalam fahrenheit : $fahrenheit");
  print("Suhu dalam kelvin : $kelvin");
  print("Suhu dalam reamur : $reamur");
}
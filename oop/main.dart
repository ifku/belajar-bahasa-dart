import 'Animal.dart';
import 'Cat.dart';
import 'Motor.dart';
import 'dart:io';
void main(){
  Motor motor_1 = new Motor('Supra', 4);

  print(motor_1.nama_motor);
  print(motor_1.kapasitas_bensin);
  
}
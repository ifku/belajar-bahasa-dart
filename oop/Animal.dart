import 'dart:io';
import 'Cat.dart';


class Animal{
 String _name = '';
  int _age;
  double _weight = 0;
 
  Animal(this._name, this._age, this._weight);
 
//setter
 set name(String value){
   _name = value;
 }
 //getter
 String get name => _name;
 double get weight => _weight;


  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
    print(_weight);
  }
  
  void sleep() {
    print('$_name is sleeping.');
  }
 
 
}

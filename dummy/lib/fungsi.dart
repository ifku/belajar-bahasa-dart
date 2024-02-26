import 'dart:io';

void main(){
  greet('Ifku', 2002);
}
void greet(String nama, lahir){
  var umur = 2022 - lahir;

  print("Halo $nama, umur anda adalah : $umur");
}
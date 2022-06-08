import 'dart:io';

void main(){
  stdout.write("Masukkan jumlah row !");
  var rows = int.parse(stdin.readLineSync()!);

  for(int y = 1; y <= rows; y++){
    for(int x = 1; x <= y; x++){
      stdout.write("*");
    }
    print("\n");
  }
}
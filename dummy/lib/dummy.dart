import 'dart:io';

void main(List<String> args) {
  String? kata = "tenet";
  int i;
  int n = kata.length;
  bool? hasil;

  for(i = 0; i < n; i++){
    if(kata[i] != kata[n-i-1]){
      hasil = false;
    }
  }

  if(hasil == true){
    print("Palindrom");
  } else {
    print("Tidak Palindrom");
  }
}
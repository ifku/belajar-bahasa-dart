Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

void main() async {
  getOrder().then((value) {
    print('You ordered: $value');
  }).catchError((error) {
    print("Sorry $error");
  }).whenComplete(() {
    print("Thank you !");
  });
  print('Getting your order...');
}

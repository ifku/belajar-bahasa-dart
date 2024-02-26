import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:stream_api/users_model.dart';

StreamController<Users> _streamController = StreamController<Users>();
Stream<Users> get stream => _streamController.stream;
StreamSink<Users> get streamSink => _streamController.sink;
void main(List<String> args) {
  fetchData();
  stream.listen((event) {
    for (var user in event.data) {
      print(user.id);
      print(user.email);
      print(user.gender);
      print(user.phone);
      print(user.username);
      print("========================================");
    }
  });
}

void fetchData() async {
  const BASE_URL = "https://348b-116-206-40-35.ngrok-free.app/api/v1/users";
  try {
    final response = await http.get(Uri.parse(BASE_URL));
    if (response.statusCode == 200) {
      final users = usersFromJson(response.body);
      streamSink.add(users);
    }
  } catch (error) {
    throw Exception('Failed to load data');
  }
}

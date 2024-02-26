import 'dart:async';

StreamController<String> _streamController = StreamController<String>();
Stream<String> get stream => _streamController.stream;
StreamSink<String> get streamSink => _streamController.sink;

void main(List<String> args) async {
  stream.listen((event) {
    print(event);
  });

  for (var i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 2), () {
      streamSink.add("World $i");
    });
  }
}

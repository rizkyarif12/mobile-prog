import 'package:flutter/material.dart';
import 'dart:async';

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }

  // addError() {
  //   controller.addError(Exception('Error'));
  // }
}

class ColorStream {
  final List<Color> colors = [
    Colors.teal,
    Colors.purple,
    Colors.blue,
    Colors.red,
    Colors.green,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

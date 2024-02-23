import 'dart:js_interop';

import 'package:dart3_node_interop/dart3_node_interop.dart';

/// A simple hello world that prints to the console.
///
/// Unlike [hello_world.dart], this example uses a `console` object built
/// using `dart:js_interop` interop types.
///
/// Supported using both browser and Node.js runtimes.
void main() {
  console.error('Hello world from console!'.toJS);
}

import 'dart:js_interop';

import 'package:dart3_node_interop/types/console.dart';

void main() {
  console.error('Hello world from console!'.toJS);
}

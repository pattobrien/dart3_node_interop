// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:dart3_node_interop/types/console.dart';
import 'package:dart3_node_interop/types/fs.dart';

void main() {
  final thisDir = '/Users/pattobrien/dev/pattobrien/dart3_node_interop';
  final files = readdirSync(thisDir.toJS);
  for (final file in files.toDart) {
    console.log(file);
  }
}

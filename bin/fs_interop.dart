// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:dart3_node_interop/dart3_node_interop.dart';

/// Reads from the file system and prints the files in the given directory.
///
///
Future<void> main() async {
  // final module = await importModule('fs').toDart;
  final thisDir = '/Users/pattobrien/dev/pattobrien/dart3_node_interop';
  final files = (await fs).readdirSync(thisDir.toJS);
  for (final file in files.toDart) {
    console.log(file);
  }
}

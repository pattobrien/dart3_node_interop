// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:dart3_node_interop/dart3_node_interop.dart';

/// Reads from the file system and prints the files in the given directory.
///
/// This example requires the import of the `fs` module that is built into
/// Node.js. To avoid requiring users of our `fs` module to explicitly import
/// the `fs` module, we use a top level `FS` extension type that contains
/// all of the properties contained in fs. The user must then await the top
/// level `fs` getter in order to call the `readdirSync` method.
///
/// NOTE: this dev x should improve following the completion of this issue:
/// https://github.com/dart-lang/sdk/issues/53783
Future<void> main() async {
  final thisDir = '/Users/pattobrien/dev/pattobrien/dart3_node_interop';
  final files = (await fs).readdirSync(thisDir.toJS);
  for (final file in files.toDart) {
    console.log(file);
  }
}

@JS('fs')
library fs;

import 'dart:js_interop';

// Future<FS> get fs => importModule('fs').toDart.then(
//       (value) => value.typeofEquals('fs')
//           ? value as FS
//           : throw Exception('Module fs not found'),
//     );
@JS()
Future<FS> get fs async => FS._(await importModule('fs').toDart);

// @JS()
extension type FS._(JSObject _) implements JSObject {
  // @JS('readFileSync')
  external JSAny readFileSync(
    JSAny file, [
    JSAny? options,
  ]);
  // @JS('writeFileSync')
  external void writeFileSync(
    JSAny file,
    JSAny data, [
    JSAny? options,
  ]);
  // @JS('readdirSync')
  external JSArray<JSString> readdirSync(
    JSAny path, [
    JSAny? options,
  ]);
}

// @JS()
// external void writeFileSync(
//   JSAny file,
//   JSAny data, [
//   JSAny? options,
// ]);

// @JS()
// external JSArray<JSString> readdirSync(
//   JSAny path, [
//   JSAny? options,
// ]);

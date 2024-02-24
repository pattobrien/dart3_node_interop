@JS('fs')
library fs;

import 'dart:js_interop';

@JS()
Future<FS> get fs async => FS._(await importModule('fs').toDart);

extension type FS._(JSObject _) implements JSObject {
  external JSAny readFileSync(
    JSAny file, [
    JSAny? options,
  ]);

  external void writeFileSync(
    JSAny file,
    JSAny data, [
    JSAny? options,
  ]);

  external JSArray<JSString> readdirSync(
    JSAny path, [
    JSAny? options,
  ]);
}

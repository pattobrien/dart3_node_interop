@JS('fs')
library fs;

import 'dart:js_interop';

@JS()
external void writeFileSync(
  JSAny file,
  JSAny data, [
  JSAny? options,
]);

@JS()
external JSArray readdirSync(
  JSAny path, [
  JSAny? options,
]);

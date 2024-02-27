@JS('vscode')
library vscode;

import 'dart:js_interop';

// @JS()
// extension type VSCode(JSObject obj) implements JSObject {
//   external Commands
// }

@JS()
extension type ModuleExports(JSObject obj) implements JSObject {
  external void activate(ExtensionContext context);
  @JS('activate')
  external set activateSetter(JSExportedDartFunction func);

  external void deactivate();

  @JS('deactivate')
  external set deactivateSetter(JSExportedDartFunction func);
}

@JS()
extension type ExtensionContext(JSObject obj) implements JSObject {
  external JSArray<Disposable> get subscriptions;
}

@JS()
extension type ExtensionContextSubscription(JSObject obj)
    implements JSObject, Disposable {}

@JS()
extension type Disposable(JSObject obj) implements JSObject {
  external void dispose();
}

extension DisposableExt on JSArray<Disposable> {
  @JS()
  external void push(Disposable subscription);
}

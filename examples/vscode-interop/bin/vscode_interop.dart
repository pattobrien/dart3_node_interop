// ignore_for_file: unused_import

@JS('extension')
library extension;

import 'dart:js_interop';
import 'dart:js_util';

import 'package:dart3_node_interop/dart3_node_interop.dart';
import 'package:vscode_interop/vscode/commands.dart' as commands;
import 'package:vscode_interop/vscode/window.dart' as window;
import 'package:vscode_interop/vscode_interop.dart';

// NOTES:
// - how do we export functions? (e.g. `activate`). doing so in the global scope
//   using `@JSExport` causes an error.

void main(List<String> arguments) {
  print('Hello world!');
  // activate = allowInterop(_activateImplementation);
  // exposedFunc = allowInterop((foo) {} as Foo);
  // deactivate = allowInterop(f)
  // Module.deactivate();
  allowInteropCaptureThis(_activateImpl);

  print('Extension methods have been set!');
}

// @JS()
// external set exposedFunc(Foo func);

// @JS()
// extension type Module(JSObject obj) implements JSObject {
//   external static deactivate();
// }

@JS()
JSFunction get activate => _activateImpl.toJS;

void _activateImpl(ExtensionContext context) {
  print('activate!');

  var disposable = commands.registerCommand(
      'vscode-interop.helloWorld',
      () {
        window.showInformationMessage('Hello World from Dart!');
      }.toJS);

  context.subscriptions.push(disposable);
}

@JS()
JSFunction get deactivate => _deactivateImpl.toJS;

void _deactivateImpl() {
  print('deactivate');
}

// @JS()
// external set _deactivateSetter(void deactivate);

// @JS('deactivate')
// external void _deactivateImpl();

// NOTE: the below works, but isnt added to global scope
//@JS()
// void activate(ExtensionContext context) {
//   return _activateImplementation(context);
// }

// typedef Activation = JSExportedDartFunction
// @JS()
// external void deactivate();

void _activateImplementation(ExtensionContext context) {
  console.log(
    'Congratulations, your extension "vscode_interop" is now active!'.toJS,
  );

  var disposable = commands.registerCommand(
      'vscode-interop.helloWorld',
      () {
        window.showInformationMessage('Hello World from Dart!');
      }.toJS);

  context.subscriptions.push(disposable);
}

void _deactivateImplementation() {}

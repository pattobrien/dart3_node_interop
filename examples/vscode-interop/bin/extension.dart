// ignore_for_file: unused_import

// @JS('extension')
// library extension;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:js_util' hide allowInterop;

// import 'dart:js';

import 'package:dart3_node_interop/dart3_node_interop.dart';
import 'package:js/js.dart' show allowInterop;
import 'package:vscode_interop/vscode/commands.dart' as commands;
import 'package:vscode_interop/vscode/window.dart' as window;
import 'package:vscode_interop/vscode_interop.dart';

// NOTES:
// - how do we export functions? (e.g. `activate`). doing so in the global scope
//   using `@JSExport` causes an error.

void main() {
  // _activate = allowInterop(activateImplementation).toJS;
  // await importModule('../node_preamble.js').toDart;
  print('DART - starting...');
  print('DART - imported node_preamble.js');

  // activate(ExtensionContext({}.toJSBox));
  // exports = ModuleExports({}.toJSBox);
  final moduleExports = exports;
  console.log('DART - Module Exports:'.toJS);
  console.log(moduleExports);
  moduleExports.activateSetter = allowInterop(activateImplementation).toJS;

  // // _activate = allowInterop(activateImplementation).toJS;
  // console.log('DART - Exports:'.toJS);
  // console.log(exports);

  // // globalThis exports
  // final globalThisExports = globalContext;
  // console.log('GlobalThis Exports:'.toJS);
  // console.log(globalThisExports);

  print('Completed!');
}

// @JS()
// external Module get module;

// @JS()
// extension type Module(JSObject obj) implements JSObject {
//   external set exports(ModuleExports value);
//   external ModuleExports get exports;
// }

@JS('exports')
external set exports(ModuleExports value);

@JS('exports')
external ModuleExports get exports;

// @JS('exports.activate')
// external set _activate(JSFunction value);

// @JS('exports.activate')
// external void activate(ExtensionContext context);

void activateImplementation(ExtensionContext context) {
  print(
    'Congratulations, your extension "vscode_interop" is now active!',
  );

  var disposable = commands.registerCommand(
      'vscode-interop.helloWorld',
      () {
        window.showInformationMessage('Hello World from Dart!');
      }.toJS);

  context.subscriptions.push(disposable);
}

void deactivateImplementation() {}

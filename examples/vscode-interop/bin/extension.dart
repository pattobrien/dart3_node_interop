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

Future<void> main() async {
  print('DART - starting...');

  final moduleExports = exports;
  console.log('DART - Module Exports:'.toJS);
  console.log(moduleExports);
  moduleExports.activateSetter = allowInterop(activateImplementation).toJS;

  final gExports = globalContext.getProperty('exports'.toJS);
  console.log('DART - gExports:'.toJS);
  console.log(gExports);

  final ggExports = getProperty(globalThis, 'exports');
  if (ggExports != null) {
    print('f');
  }
  // final hasProperty = globalContext.hasProperty('exports'.toJS);
  // console.log('DART - hasProperty:'.toJS);
  // console.log(hasProperty);

  print('Completed!');
}

@JS('exports')
external set exports(ModuleExports value);

@JS('exports')
external ModuleExports get exports;

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

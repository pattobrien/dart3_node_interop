@JS('commands')
library vscode.commands;

import 'dart:js_interop';

import 'vscode.dart';

@JS('commands.registerCommand')
external Disposable registerCommand(String command, JSFunction callback);

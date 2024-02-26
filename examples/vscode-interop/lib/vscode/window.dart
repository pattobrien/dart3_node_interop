@JS('vscode.window')
library vscode.window;

import 'dart:js_interop';

// TODO: the signature is actually:
// `showInformationMessage(message: string, ...items: string[]): Thenable<string | undefined>;`
// how do we represent 1. the ...items parameter and 2. the Thenable return type?
@JS()
external JSPromise<JSAny?> showInformationMessage(String message);

"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.activate = void 0;
// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
const vscode_1 = require("vscode");
// This method is called when your extension is activated
// Your extension is activated the very first time the command is executed
function activate(context) {
    // Use the console to output diagnostic information (console.log) and errors (console.error)
    // This line of code will only be executed once when your extension is activated
    console.log('Congratulations, your extension "vscode-interop" is now active!');
    // The command has been defined in the package.json file
    // Now provide the implementation of the command with registerCommand
    // The commandId parameter must match the command field in package.json
    let disposable = vscode_1.commands.registerCommand('vscode-interop.helloWorld', () => {
        // The code you place here will be executed every time your command is executed
        // Display a message box to the user
        vscode_1.window.showInformationMessage('Hello World from vscode_interop!');
    });
    context.subscriptions.push(disposable);
}
// exports.activate = activate; // this works (and is what's generated by vscode + yo)
// module.exports = { activate }; // this works
// module.exports.activate = activate; // this works

// self.activate = activate; // this doesn't work
// self.exports = { activate }; // this doesn't work
console.log('self:', self);
console.log('globalThis:', globalThis);

// globalThis.exports = { activate }; // this doesn't work
// globalThis.activate = activate; // this doesn't work


// This method is called when your extension is deactivated
function deactivate() { }
exports.deactivate = deactivate;

// console.log('globalThis exports:', globalThis.exports);
// console.log('self exports:', self.exports);
console.log('globalThis.self.module.exports:', globalThis.self.module.exports);
console.log('self.module.exports:', self.module.exports);
// console.log('module.exports:', module.exports);
// console.log('regular exports:', exports);

// // test how to change exports
// globalThis.self.module.exports.activate = activate; // doesn't work
// console.log('CHANGED globalThis.self.module.exports:', globalThis.self.module.exports);

// globalThis.module.exports.activate = activate; // doesn't work
// console.log('CHANGED globalThis.module.exports:', globalThis.module.exports);

// self.module.exports.activate = activate; // doesn't work
// console.log('CHANGED self.module.exports:', self.module.exports);

// module.exports.activate = activate; // this works
// console.log('CHANGED module.exports:', module.exports);

// exports.activate = activate; // this works
// console.log('CHANGED exports:', exports);

// this.activate = activate; // this works (but is not recommended!)
// console.log('CHANGED this:', this);


//# sourceMappingURL=extension.js.map
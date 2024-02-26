
"use strict";

// (async () => {
//     // runs preamble.js before main.js
//   await import('./node_preamble.js');
//   console.log('finishing importing node_preamble.js');
//   // await import('./gen/extension.dart.js');
//   // console.log('finishing importing extension.dart.js');

//   // const extension = await import('./gen/extension.dart.js');
//   // exports.activate = (context) => {
//   //   console.log('activating!!!');

//   //   const disposable = vscode.commands.registerCommand('vscode-interop.helloWorld', () => {
//   //     vscode.window.showInformationMessage('Hello World!');
//   //   });

//   //   context.subscriptions.push(disposable);
//   // };
//   // exports.deactivate = extension.deactivate;
  
//   // console.log('finishing importing extension.dart.js');

  
//   // console.log('Exports:', exports);
//   // exports.activate({
//   //   subscriptions: [],
//   // });
//   // exports.deactivate();

// })();

// export { activate, deactivate } from './gen/extension.dart.js';
require('./node_preamble.js');
const extension = require('./gen/extension.dart.js');
console.log('EXTENSION:', extension);
console.log('EXPORTSSS:', extension.exports);
exports.activate = extension.activate;
exports.deactivate = extension.deactivate;

// exports.activate = (context) => {
//   console.log('activate');
  
//   const disposable = vscode.commands.registerCommand('vscode-interop.helloWorld', () => {
//     vscode.window.showInformationMessage('Hello World!');
//   });

//   context.subscriptions.push(disposable);
// };

// exports.deactivate = () => {
//   console.log('deactivate');
// };
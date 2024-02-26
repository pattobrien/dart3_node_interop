
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
const preamble = require('./node_preamble.js');
const util = require('util');
const preExports = preamble.self.exports;
const preActivate = preExports.self.exports.activate;
console.log('PRE-ACTIVATE:', util.inspect(preActivate, { showHidden: false, depth: null }));

// console.log('PREAMBLE:', preamble);
// console.log('PRE-EXPORTS:', util.inspect(preExports, { showHidden: false, depth: null }));
const extension = require('./gen/extension.dart.js');
// console.log('EXTENSION:', extension);
// console.log('EXPORTSSS:', extension.exports);
// exports.activate = extension.activate;
// exports.deactivate = extension.deactivate;

const changedExports = preamble.self.exports;
const selfExport = changedExports.self;
// NOTE: Can we access the newly added `activate` method from the previous
// reference of `self.exports`?
const activate = selfExport.exports.activate;
console.log('CHANGED EXPORTS:', util.inspect(activate, { showHidden: false, depth: null }));

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
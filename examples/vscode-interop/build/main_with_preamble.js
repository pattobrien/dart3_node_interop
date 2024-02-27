
"use strict";

const preamble = require('./node_preamble.js');

const vscode = require('vscode');
// preamble.self.imports['vscode'] = vscode;
preamble.self.vscode = vscode;


require('./gen/extension.dart.js');

const changedExports = preamble.self.exports;
const selfExport = changedExports.self;

module.exports = selfExport.exports;
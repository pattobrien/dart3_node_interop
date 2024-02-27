
// loads the extension found in `./extension.js`.
const extensionExports = require('./extension.js');
console.log('exports:', extensionExports);

// call activate function
const context = { subscriptions: [] };
extensionExports.activate(context);
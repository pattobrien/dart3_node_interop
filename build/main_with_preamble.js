
(async () => {
    // runs preamble.js before main.js
  await import('./node_preamble.js');
  await import('./gen/console_interop.dart.js');

})();
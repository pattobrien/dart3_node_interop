
(async () => {
    // runs preamble.js before main.js
  await import('./node_preamble.js');

  // NOTE: explicit import of fs module and added it to global scope
  const fs = await import('fs');
  globalThis.fs = fs;

  // await import('./gen/console_interop.dart.js');
  await import('./gen/fs_interop.dart.js');

})();
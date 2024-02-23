
(async () => {
    // runs preamble.js before main.js
  await import('./node_preamble.js');

  // 1. [hello_world.dart]
  // await import ('./gen/hello_world.dart.js'); 

  // 2. [console_interop.dart]
  // await import('./gen/console_interop.dart.js');

  // 3. [fs_interop.dart]
  // NOTE: explicit import of fs module and added it to global scope
  // const fs = await import('fs');
  // globalThis.fs = fs;
  await import('./gen/fs_interop.dart.js');


})();
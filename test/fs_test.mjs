
// This shows a vanilla js way of reading the contents of a directory, using
// built-in node.js modules.
// NOTE: you need to use the .mjs extension for this to work.
import { readdirSync } from 'fs';
import { fileURLToPath } from 'url';

import { dirname } from 'path';

const fileName = fileURLToPath(import.meta.url);
const dirName = dirname(fileName);

const files = readdirSync(dirName);

console.log(files);
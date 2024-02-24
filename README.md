# dart3-node-interop

Experiments with `node.js` interoperability using the latest Dart 3 features.

## How to Run

1. Run `webdev build --output bin:build/gen` to generate the js. Files should be generated in the `build/gen` directory.
2. Modify the import in `build/main_with_preamble.js` with the name of the new entrypoint generated in step 1.
3. Run `node build/main_with_preamble.js` to test the compiled js. 

  - Alternatively, you can also run it in the browser by using `webdev serve build:8080`.

NOTE: For some reason, `webdev serve` isnt regenerating the js files on change, so this implementation currently requires use of `webdev build` first.

- `webdev build --output bin:build/gen`
- `webdev serve build:8080`

## TODO

- [x] basic node.js interop script using 0 dependencies
- [x] create a JS interop type that represents the (built-in) console log
- [x] verify platform agnostic type (e.g. `console`) can be run from browser.
- [x] create a Node.JS interop type that only exists via an import (e.g. `fs`)
- [ ] create a Browser JS interop type, and verify it doesn't work using node


### Enhancements

- [ ] can the `node.js` preamble be programatically added to existing `build_web_compilers`? (see: https://github.com/dart-lang/build/tree/82889aea57247a32b327f4e51e5c42f4b70fb230/build_web_compilers#manual-usage)
- [ ] can we get intellisense to work on generated code (possibly using `jsconfig.json`)? this would help debug issues at compile time, rather than run time
- [ ] build Dart extension type definitions from ts declaration files
- [ ] couldn't access `import.meta.url` (didn't try _everything_) - is there a reason that this would be needed in `node.js`

### End-to-End validation tests

- [ ] VSCode extension interop
- [ ] ReactJS interop

### Conclusions

#### NodeJS Hot Reload

Dart hot reload cannot work together to hot reload NodeJS. Unlocking this feature would likely require interop with a JS reloader, e.g. Webpack HMR.


### Additional Notes

#### Dynamic Imports

Dart currently doesn't have a way to declare modules that can automatically be imported into the global scope. There are two options (but possibly more) for dealing with module imports:

- only use static imports (e.g. `<script>` in `index.html`)
- explicitly import a module using `js_interop.importModule('fs')`

Relevant:

- https://github.com/dart-lang/sdk/issues/53783
- https://github.com/dart-lang/sdk/issues/52852
- deferred loading of a library - https://dart.dev/language/libraries#lazily-loading-a-library
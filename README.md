# dart3-node-interop

Interoperability with `node.js` using the latest Dart3 features.

## How to Run

1. Run `webdev build --output bin:build` to generate the js. Files should be 
   generated in the `build/gen` directory.
2. Modify the import in `build/main_with_preamble.js` with the name of the 
   new entrypoint generated in step 1.
3. Run `node build/main_with_preamble.js` to test the compiled js. 

  - Alternatively, you can also run it in the browser by using `webdev serve build:8080`.

## TODO:

Compile dart program to js and run via `node build/foo.dart.js`.

- [x] basic dart program with 0 dependencies
- [x] create a JS interop type that represents the console log
- [x] verify platform agnostic type (e.g. `console`) can be run from browser.
- [ ] create a JS interop type that only exists via an import (e.g. `fs`)
- [ ] create a BROWSER JS interop type, and verify it doesn't work using node


### Enhancements

- [ ] see if preamble can be programatically added to existing `build_web_compilers` (see: https://github.com/dart-lang/build/tree/82889aea57247a32b327f4e51e5c42f4b70fb230/build_web_compilers#manual-usage)
- [ ] can we get intellisense to work on generated code (possibly using `jsconfig.json`)?
- [ ] can we build js type definitions from ts declaration files?
- [ ] couldn't access `import.meta.url` (didn't try _everything_) - is there a reason that this would be needed?


NOTES: 

For some reason, `webdev serve` isnt regenerating files, so we need to continue to use `webdev build` first.

- `webdev build --output bin:build/gen`
- `webdev serve build:8080`


### Related topics

#### Dynamic Imports

Dart currently doesn't have a way to declare modules that can automatically be imported into the global scope. Therefore you have two options for dealing with module imports:

- only use static imports (e.g. `<script>` in `index.html`)
- explicitly import a module using `js_interop.importModule`

Relevant topics:

see: 
- https://github.com/dart-lang/sdk/issues/53783
- https://github.com/dart-lang/sdk/issues/52852
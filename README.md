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

- [ ] see if preamble can be programatically added to existing `build_web_compilers`
- [ ] can we get intellisense to work on generated code (possibly using `jsconfig.json`)?
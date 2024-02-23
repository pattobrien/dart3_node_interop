# dart3-node-interop

## How to Run

1. Run `webdev build --output bin:build` to generate the js.
2. Run `node build/foo.dart.js` to test the compiled js.

## TODO:

Compile dart program to js and run via `node build/foo.dart.js`.

- [x] basic dart program with 0 dependencies
- [x] create a JS interop type that represents the console log
# bs-jest-date-mock

[![NPM version](http://img.shields.io/npm/v/bs-jest-date-mock.svg)](https://www.npmjs.org/package/bs-jest-date-mock)
[![Build Status](https://travis-ci.org/mikaello/bs-jest-date-mock.svg?branch=master)](https://travis-ci.org/mikaello/bs-jest-date-mock)

BuckleScript bindings for [jest-date-mock](https://github.com/hustcc/jest-date-mock). Use it to mock `Js.Date.t` when using Jest.

## Getting started

```
yarn add bs-jest-date-mock
```

Then add `bs-jest-date-mock` as a dependency to `bsconfig.json`:

```diff
"bs-dependencies": [
+  "bs-jest-date-mock"
]
```

And add `jest-date-mock` to Jest setup files in `package.json` (you will need to add the `"jest"`-part to `package.json` if you don't have it already):

```diff
"jest": {
  "setupFiles": [
+    "jest-date-mock"
  ]
}
```

There is also other ways, check out the [setup sections](https://github.com/hustcc/jest-date-mock#setup) in jest-date-mock.

## Example

```reason
open BsJestDateMock

advanceTo(Js.Date.makeWithYMD(~year=2010.0, ~month=5.0, ~date=27.0, ()));

Js.log(Js.Date.make() |> Js.Date.toUTCString);
// => Sat, 26 Jun 2010 22:00:00 GMT

advanceBy(3 * 60 * 1000); // advanceBy 3 minutes (given in milliseconds)

Js.log(Js.Date.make() |> Js.Date.toUTCString);
// => Sat, 26 Jun 2010 22:03:00 GMT

clear(); // shut down mock system, Js.Date should now be as before

Js.log(Js.Date.make() |> Js.Date.toUTCString);
// => Sat, 06 Jul 2019 07:01:41 GMT
```

## Contribute

- If you find bugs or want to improve this library, feel free to open an issue or PR.
- If you are upgrading any dependencies, please use yarn so `yarn.lock` is updated.
- Try to adhere to [Angular commit guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guideline).

## Alternatives

There is some tips in the post "[Mocking/stubbing the current Date in Jest tests](https://codewithhugo.com/mocking-the-current-date-in-jest-tests/)" by Hugo Di Francesco.

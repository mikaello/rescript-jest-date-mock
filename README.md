# rescript-jest-date-mock

[![NPM version](https://img.shields.io/npm/v/rescript-jest-date-mock.svg)](https://www.npmjs.org/package/rescript-jest-date-mock)

ReScript bindings for [jest-date-mock](https://github.com/hustcc/jest-date-mock). Use it to mock `Date.t` when using Jest.

## Getting started

```
npm install rescript-jest-date-mock
```

Then add `rescript-jest-date-mock` as a dependency to `rescript.json`:

```diff
"dependencies": [
+  "rescript-jest-date-mock"
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

For other setup options, see the [jest-date-mock setup guide](https://github.com/hustcc/jest-date-mock#setup).

## Example

```rescript
open RescriptJestDateMock

advanceTo(Date.fromTime(0.0))

Console.log(Date.make()->Date.toUTCString)
// => Thu, 01 Jan 1970 00:00:00 GMT

advanceBy(3 * 60 * 1000) // advanceBy 3 minutes (given in milliseconds)

Console.log(Date.make()->Date.toUTCString)
// => Thu, 01 Jan 1970 00:03:00 GMT

clear() // shut down mock system, Date should now be as before

// Date now uses the real clock again.
```

## Contribute

- If you find bugs or want to improve this library, feel free to open an issue or PR.
- If you upgrade dependencies, use npm and commit the updated `package-lock.json`.
- Try to adhere to [Angular commit guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guideline).

## Alternatives

For more ideas, see "[Mocking/stubbing the current Date in Jest tests](https://codewithhugo.com/mocking-the-current-date-in-jest-tests/)" by Hugo Di Francesco.

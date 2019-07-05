# bs-jest-date-mock

BuckleScript bindings for [jest-date-mock](https://github.com/hustcc/jest-date-mock). Mock Js.Date.t when using Jest.

## Getting started

```
yarn add mikaello/bs-jest-date-mock
```

Then add `bs-jest-date-mock` as a dependency to `bsconfig.json`:

```diff
"bs-dependencies": [
+  "bs-jest-date-mock"
]
```

And add `jest-mock-date` to Jest setup files in `package.json` (you will need to add the `"jest"`-part to `package.json` if you don't have it already):

```diff
"jest": {
  "setupFiles": [
+    "jest-date-mock"
  ]
}
```

There is also other ways, check out the [setup sections]https://github.com/hustcc/jest-date-mock#setup in jest-date-mock.

## Example

```reason
open BsJestDateMock


```

## Contribute

- If you find bugs or want to improve this library, feel free to open an issue or PR.
- If you are upgrading any dependencies, please use yarn so `yarn.lock` is updated.
- Try to adhere to [Angular commit guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guideline).

## Alternatives

There is some tips in the post [Mocking/stubbing the current Date in Jest tests](https://codewithhugo.com/mocking-the-current-date-in-jest-tests/) by Hugo Di Francesco.

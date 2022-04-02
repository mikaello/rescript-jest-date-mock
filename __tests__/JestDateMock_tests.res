open Jest;
open Expect;

open RescriptJestDateMock;

beforeEach(() => clear());

describe("rescript-jest-date-mock", () => {
  test("Date.make() and advanceTo 0", () => {
    advanceTo(Js.Date.fromFloat(0.0));
    expect(Js.Date.make()) -> toEqual(Js.Date.fromFloat(0.0));
  });

  test("Date.make() and advanceTo 1000", () => {
    let thousand = 1000.0;
    advanceTo(Js.Date.fromFloat(thousand));
    expect(Js.Date.make()) -> toEqual(Js.Date.fromFloat(thousand));
  });

  test("Date.now() and advanceTo 520", () => {
    let thousand = 520.0;
    advanceTo(Js.Date.fromFloat(thousand));
    expect(Js.Date.now())
    -> toEqual(Js.Date.fromFloat(thousand) -> Js.Date.getMilliseconds);
  });

  test("advanceBy", () => {
    advanceBy(3000); // advanceBy time 3 seconds
    let now = Js.Date.now();
    advanceBy(4000); // advanceBy time 4 seconds

    expect(Js.Date.now() -. now) -> toEqual(4000.0);
  });

  test("usage", () => {
    advanceTo(
      Js.Date.makeWithYMDHMS(
        ~year=2018.0,
        ~month=5.0,
        ~date=27.0,
        ~hours=0.0,
        ~minutes=0.0,
        ~seconds=0.0,
        (),
      ),
    );

    let now = Js.Date.now();
    advanceBy(3000); // advanceBy time 3 seconds
    advanceBy(-1000); // advanceBy time -1 second

    expect(Js.Date.now() -. now) -> toBe(2000.0);
  });
});

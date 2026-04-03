open Jest
open Expect

open RescriptJestDateMock

beforeEach(() => clear())

describe("rescript-jest-date-mock", () => {
  test("Date.make() and advanceTo 0", () => {
    advanceTo(Date.fromTime(0.0))
    expect(Date.make())->toEqual(Date.fromTime(0.0))
  })

  test("Date.make() and advanceTo 1000", () => {
    let thousand = 1000.0
    advanceTo(Date.fromTime(thousand))
    expect(Date.make())->toEqual(Date.fromTime(thousand))
  })

  test("Date.now() and advanceTo 520", () => {
    let thousand = 520.0
    advanceTo(Date.fromTime(thousand))
    expect(Date.now())->toEqual(Date.fromTime(thousand)->Date.getMilliseconds->Int.toFloat)
  })

  test("advanceBy", () => {
    advanceBy(3000) // advanceBy time 3 seconds
    let now = Date.now()
    advanceBy(4000) // advanceBy time 4 seconds

    expect(Date.now() -. now)->toEqual(4000.0)
  })

  test("usage", () => {
    advanceTo(
      Date.makeWithYMDHMS(
        ~year=Float.toInt(2018.0),
        ~month=Float.toInt(5.0),
        ~day=Float.toInt(27.0),
        ~hours=Float.toInt(0.0),
        ~minutes=Float.toInt(0.0),
        ~seconds=Float.toInt(0.0),
      ),
    )

    let now = Date.now()
    advanceBy(3000) // advanceBy time 3 seconds
    advanceBy(-1000) // advanceBy time -1 second

    expect(Date.now() -. now)->toBe(2000.0)
  })
})

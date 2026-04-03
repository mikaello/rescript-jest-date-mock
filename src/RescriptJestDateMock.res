/** advance date timestamp by [ms] */
@module("jest-date-mock")
external advanceBy: int => unit = "advanceBy"

/** reset date to [timestamp] */
@module("jest-date-mock")
external advanceTo: Date.t => unit = "advanceTo"

/** shut down the mock system */
@module("jest-date-mock")
external clear: unit => unit = "clear"

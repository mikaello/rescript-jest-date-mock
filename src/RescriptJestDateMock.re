/** advance date timestamp by [ms] */
[@bs.module "jest-date-mock"]
external advanceBy: int => unit = "advanceBy";

/**  reset date to [timestamp] */
[@bs.module "jest-date-mock"]
external advanceTo: Js.Date.t => unit = "advanceTo";

/** shut down the mock system */
[@bs.module "jest-date-mock"]
external clear: unit => unit = "clear";
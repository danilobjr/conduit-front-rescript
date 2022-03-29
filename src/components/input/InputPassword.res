open JsxUtils

@react.component
let make = (~className=?, ~placeholder="", ~value, ~onChange) => {
  <input className={classNames("input", className)} placeholder type_="password" value onChange />
}

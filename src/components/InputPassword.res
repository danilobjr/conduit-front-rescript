open JsxUtils

let style = "py-3 px-5 bg-neutral-100 border-zero rounded-md"

@react.component
let make = (~className=?, ~placeholder="", ~value, ~onChange) => {
  <input className={classNames(style, className)} placeholder type_="password" value onChange />
}

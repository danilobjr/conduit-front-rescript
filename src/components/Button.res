open JsxUtils

@react.component
let make = (~children: string, ~className=?) => {
  <button className={classNames("button", className)}> {children->str} </button>
}

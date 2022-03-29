open JsxUtils

@react.component
let make = (~className=?, ~children, ~to) => {
  <a className={classNames("link", className)} href=to> children </a>
}

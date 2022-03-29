open JsxUtils

module Title = {
  @react.component
  let make = (~children, ~className=?) => {
    <h1 className={classNames("title", className)}> {children->str} </h1>
  }
}

module Text = {
  @react.component
  let make = (~children, ~className=?) => {
    <span className={classNames("text", className)}> {children->str} </span>
  }
}

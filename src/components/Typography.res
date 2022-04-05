open JsxUtils


module Style = {
  let title = "text-dark text-2xl font-bold tracking-tighter"
}

module Title = {
  @react.component
  let make = (~children, ~className=?) => {
    <h1 className={classNames(Style.title, className)}> {children->s} </h1>
  }
}

module Text = {
  @react.component
  let make = (~children, ~className=?) => {
    <span className={classNames("text", className)}> {children->s} </span>
  }
}

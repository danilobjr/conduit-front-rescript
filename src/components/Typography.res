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

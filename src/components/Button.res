open JsxUtils

let style = "py-3 px-5 bg-primary border-zero rounded-md text-white font-medium cursor-pointer"

@react.component
let make = (~children: string, ~className=?) => {
  <button className={classNames(style, className)}> {children->s} </button>
}

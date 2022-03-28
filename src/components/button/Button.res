open CssJs
open JsxUtils

module Styles = {
  let button = (~block) =>
    style(. [
      padding2(~v=0.8->rem, ~h=1.6->rem),
      width(block ? 100.0->pct : unset),
      backgroundColor(Theme.Colors.primary300->hex),
      borderStyle(none),
      borderRadius(Theme.Radius.small),
      color(Theme.Colors.white->hex),
      cursor(pointer),
    ])
}

@react.component
let make = (~children: string, ~block=false, ~className=?) => {
  let style = switch className {
  | Some(s) => merge(. [Styles.button(~block), s])
  | None => Styles.button(~block)
  }

  <button className=style> {children->str} </button>
}

module Styles = {
  open CssJs

  // TODO move this to Typography?
  let link = style(. [
    borderBottom(2->px, solid, Theme.Colors.primary300->hex),
    color(Theme.Colors.primary300->hex),
    textDecoration(none),
    letterSpacing(-0.04->#rem),
  ])
}

@react.component
let make = (~children, ~to) => {
  <a className=Styles.link href=to> children </a>
}

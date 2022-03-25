open CssJs

let button = (~block) =>
  style(. [
    padding2(~v=0.8->rem, ~h=1.6->rem),
    width(block ? 100.0->pct : unset),
    backgroundColor(Theme.Colors.primary->hex),
    borderStyle(none),
    borderRadius(Theme.Radius.small),
    color(Theme.Colors.white->hex),
    cursor(pointer),
  ])

@react.component
let make = (~children: string, ~block=false) => {
  <button className={button(~block)}> <Text> children </Text> </button>
}

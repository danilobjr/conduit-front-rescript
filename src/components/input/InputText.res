open CssJs

module InputStyles = {
  let input = style(. [
    padding2(~v=0.8->rem, ~h=1.1->rem),
    backgroundColor(Theme.Colors.primary50->hex),
    borderStyle(none),
    borderRadius(Theme.Radius.small),
    color(Theme.Colors.neutral->hex),
    outlineStyle(none),
    selector(. "::placeholder", [color(Theme.Colors.neutral200->hex)]),
  ])
}

@react.component
let make = (~className=?, ~placeholder="", ~value, ~onChange) => {
  let style = switch className {
  | Some(s) => merge(. [InputStyles.input, s])
  | None => InputStyles.input
  }

  <input className=style placeholder value onChange />
}

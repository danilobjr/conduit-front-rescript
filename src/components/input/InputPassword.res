open CssJs

let inputStyle = style(. [
  padding2(~v=0.8->rem, ~h=1.1->rem),
  backgroundColor(Theme.Colors.primary50->hex),
  borderStyle(none),
  borderRadius(Theme.Radius.small),
  color(Theme.Colors.neutral->hex),
  outlineStyle(none),
  selector(. "::placeholder", [color(Theme.Colors.neutral200->hex)]),
])

// TODO this has the same logic and styles of InputText. DRY
@react.component
let make = (~placeholder="", ~value, ~onChange) =>
  <input className=inputStyle placeholder type_="password" value onChange />

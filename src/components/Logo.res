module RawComponent = {
  @module("../assets/logo.svg") @react.component
  external make: (~className: string) => React.element = "ReactComponent"
}

@react.component
let make = (~white=false) => {
  let class = switch white {
  | false => "logo -black"
  | true => "logo"
  }

  <RawComponent className=class />
}

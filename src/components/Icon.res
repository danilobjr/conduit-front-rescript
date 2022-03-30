module Person = {
  @module("../assets/person_black_24dp.svg") @react.component
  external make: (~className: string) => React.element = "ReactComponent"
}

type icons = [
  | #person
]

@react.component
let make = (~className=?, ~variant) => {
  let cssClasses = switch className {
  | Some(c) => `icon ${c}`
  | None => "icon"
  }

  switch variant {
  | #person => <Person className=cssClasses />
  }
}

module Person = {
  @module("../assets/person_black_24dp.svg") @react.component
  external make: (~className: string) => React.element = "ReactComponent"
}

module Favorite = {
  module Filled = {
    @module("../assets/favorite.svg") @react.component
    external make: (~className: string) => React.element = "ReactComponent"
  }

  module Outline = {
    @module("../assets/favorite-outline.svg") @react.component
    external make: (~className: string) => React.element = "ReactComponent"
  }
}

type icons = [
  | #person
  | #favoriteOutline
]

@react.component
let make = (~className=?, ~variant) => {
  let cssClasses = switch className {
  | Some(c) => `icon ${c}`
  | None => "icon"
  }

  switch variant {
  | #person => <Person className=cssClasses />
  | #favorite => <Favorite className=cssClasses />
  | #favoriteOutline => <Favorite.Outline className=cssClasses />
  }
}

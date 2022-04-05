module Person = {
  @module("../assets/person.svg") @react.component
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

type icons =
  | Person
  | Favorite
  | FavoriteOutline

@react.component
let make = (~className=?, ~variant) => {
  let classes = JsxUtils.classNames("icon", className)

  switch variant {
  | Person => <Person className=classes />
  | Favorite => <Favorite.Filled className=classes />
  | FavoriteOutline => <Favorite.Outline className=classes />
  }
}

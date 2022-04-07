open JsxUtils

module Control = {
  module Style = {
    let container = "flex flex-col mt-6"
    let label = "mb-1 font-medium"
  }

  @react.component
  let make = (~children, ~label) => {
    <div className=Style.container>
      <label className=Style.label> {label->s} </label> children
    </div>
  }
}

module Actions = {
  module Style = {
    let container = "flex justify-end mt-6"
  }

  @react.component
  let make = (~children) => {
    <div className=Style.container> children </div>
  }
}

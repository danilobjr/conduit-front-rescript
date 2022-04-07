open JsxUtils

module Control = {
  module Style = {
    let container = "flex flex-col mt-6"
    let label = "mb-1 font-medium"
  }

  @react.component
  let make = (~children, ~className=?, ~label=?) => {
    let label' = switch label {
    | None => React.null
    | Some(l) => <label className=Style.label> {l->s} </label>
    }

    <div className={classNames(Style.container, className)}> label' children </div>
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

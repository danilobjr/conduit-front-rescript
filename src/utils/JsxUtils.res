// TODO refactor this to a functional approach (map?)
let getTargetValue = (setter, event) => {
  let value = ReactEvent.Form.currentTarget(event)["value"]
  setter(_ => value)
}

let s = React.string

// TODO find a better way to deal with optional className
let classNames = (base, others) =>
  switch others {
  | Some(s) => `${base} ${s}`
  | None => base
  }

let whiteSpace = {" "->s}

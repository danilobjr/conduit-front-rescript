let getTargetValue = (setter, event) => {
  let value = ReactEvent.Form.currentTarget(event)["value"]
  setter(_ => value)
}

let s = React.string

let classNames = (base, others) =>
  switch others {
  | Some(s) => `${base} ${s}`
  | None => base
  }

let whiteSpace = {" "->s}

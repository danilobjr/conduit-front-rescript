let getTargetValue = (setter, event) => {
  let value = ReactEvent.Form.currentTarget(event)["value"]
  setter(_ => value)
}

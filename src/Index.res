let elementId = "#root"
let maybeRootElement = ReactDOM.querySelector(elementId)

switch maybeRootElement {
| Some(rootElement) =>
  ReactDOM.render(<h1> {"Hello from rescript"->React.string} </h1>, rootElement)
| None => Js.log(`$elementId element not found`)
}

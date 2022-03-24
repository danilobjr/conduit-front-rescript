let elementId = "#root"
let maybeRootElement = ReactDOM.querySelector(elementId)

switch maybeRootElement {
| Some(rootElement) => ReactDOM.render(<App />, rootElement)
| None => Js.log(`$elementId element not found`)
}

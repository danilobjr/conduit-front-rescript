@react.component
let make = (~children) => {
  <ul className="flex"> children </ul>
}

module Item = {
  @react.component
  let make = (~active=false, ~children) => {
    let activeClasses = switch active {
    | true => "text-white font-bold bg-blue-400"
    | false => ""
    }

    <li className={`py-2 px-4 rounded-lg ${activeClasses}`}> children </li>
  }
}

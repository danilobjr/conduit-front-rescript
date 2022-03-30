open JsxUtils

@react.component
let make = (~active=false, ~children, ~className=?, ~menuItem=false, ~to) => {
  let menuItemClassName = switch menuItem {
  | true => "-menu-item"
  | false => ""
  }

  let activeClassName = switch active {
  | true => "-active"
  | false => ""
  }

  <a className={classNames(`link ${menuItemClassName} ${activeClassName}`, className)} href=to>
    children
  </a>
}

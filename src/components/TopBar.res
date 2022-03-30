open JsxUtils

module Navigation = {
  @react.component
  let make = () => {
    <ul className="navigation">
      <li className="item"> <Link menuItem=true active=true to="#"> {"Home"->str} </Link> </li>
      <li className="item">
        <Link menuItem=true active=false to="#"> {"New article"->str} </Link>
      </li>
      <li className="item"> <Link menuItem=true active=false to="#"> {"Settings"->str} </Link> </li>
    </ul>
  }
}

module UserAccount = {
  @react.component
  let make = () => {
    <div className="user-account">
      <span> {"@username"->str} </span> <div className="figure"> <Icon variant=#person /> </div>
    </div>
  }
}

@react.component
let make = () => {
  <div className="top-bar"> <Logo /> <Navigation /> <UserAccount /> </div>
}

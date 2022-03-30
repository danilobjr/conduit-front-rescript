open JsxUtils

@react.component
let make = () => {
  <div className="page page-feed">
    <div className="top-bar">
      <Logo />
      <ul className="nav">
        <li className="item"> <Link menuItem=true active=true to="#"> {"Home"->str} </Link> </li>
        <li className="item">
          <Link menuItem=true active=false to="#"> {"New article"->str} </Link>
        </li>
        <li className="item">
          <Link menuItem=true active=false to="#"> {"Settings"->str} </Link>
        </li>
      </ul>
      <div className="user-account">
        <span> {"@username"->str} </span> <div className="figure"> <Icon variant=#person /> </div>
      </div>
    </div>
    <div className="page-content" />
    <div />
  </div>
}

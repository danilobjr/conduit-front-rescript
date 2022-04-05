open JsxUtils
open Link

module Styles = {
  let container = "flex items-center h-20 px-14 border-b border-primary/5"
  let nav = "flex flex-1 ml-14"
  let navItem = "ml-5"
  let userBox = "flex items-center"
  let avatar = "flex items-center justify-center w-10 h-10 ml-5 border-2 border-dark rounded-full"
}

module Nav = {
  @react.component
  let make = () => {
    <ul className=Styles.nav>
      <li className=Styles.navItem>
        <Link variant=MenuItem(Active(true)) to="#"> {"Home"->str} </Link>
      </li>
      <li className=Styles.navItem>
        <Link variant=MenuItem(Active(false)) to="#"> {"New article"->str} </Link>
      </li>
      <li className=Styles.navItem>
        <Link variant=MenuItem(Active(false)) to="#"> {"Settings"->str} </Link>
      </li>
    </ul>
  }
}

module UserAccount = {
  @react.component
  let make = () => {
    <div className=Styles.userBox>
      <span> {"@username"->str} </span>
      <div className=Styles.avatar> <Icon variant=#person /> </div>
    </div>
  }
}

@react.component
let make = () => {
  <div className=Styles.container> <Logo /> <Nav /> <UserAccount /> </div>
}

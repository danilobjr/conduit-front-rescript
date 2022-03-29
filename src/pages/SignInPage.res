open Typography
open JsxUtils

module Styles = {
  open CssJs

  let form = style(. [marginTop(2.0->rem), display(flexBox), flexDirection(column)])
  let formMarginTop = style(. [marginTop(1.2->rem)])
  let skip = style(. [marginTop(2.0->rem)])
}

@react.component
let make = () => {
  <div className="sign-in-page">
    <section className="banner-section">
      <div className="brand"> {"LIGHTNING ICON conduit"->str} </div>
      <div className="header">
        {"A place to share knoledge"->str} <br /> {"Where good ideas find you"->str}
      </div>
      <div className="image"> {"Image"->str} </div>
    </section>
    <section className="form-section">
      <div className="box">
        <Title className="title"> "Sign in" </Title>
        <div className="signup">
          <Text> "Don't have an account?" </Text> {" "->str} <Link to="#"> {"Sign up"->str} </Link>
        </div>
        <form className="form">
          <InputText placeholder="E-mail" value="" onChange={Js.log} />
          <InputPassword className="-mt" placeholder="Password" value="" onChange={Js.log} />
          <Button className="-mt"> "Sign in" </Button>
        </form>
        <div className="skip">
          <Text> "Skip sign-in for now and" </Text>
          {" "->str}
          <Link to="#"> {"start reading"->str} </Link>
        </div>
      </div>
    </section>
  </div>
}

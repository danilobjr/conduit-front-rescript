open Typography
open JsxUtils

module Styles = {
  open CssJs

  let page = style(. [height(100.0->vh), display(flexBox)])
  let bannerSection = style(. [
    background(
      linearGradient(0.0->deg, [Theme.Colors.BlueGradient.from, Theme.Colors.BlueGradient.to]),
    ),
    flex(1.0->#num),
  ])
  let brand = style(. [])
  let header = style(. [])
  let image = style(. [])
  let formSection = style(. [
    flex(1.0->#num),
    display(flexBox),
    alignItems(center),
    justifyContent(center),
  ])
  let box = style(. [maxWidth(400->px), flex(1.0->#num)])
  let title = style(. [marginTop(zero), marginBottom(0.6->rem)])
  let signup = style(. [])
  let form = style(. [marginTop(2.0->rem), display(flexBox), flexDirection(column)])
  let formMarginTop = style(. [marginTop(1.2->rem)])
  let skip = style(. [marginTop(2.0->rem)])
}

@react.component
let make = () => {
  <div className=Styles.page>
    <section className=Styles.bannerSection>
      <div className=Styles.brand> {"LIGHTNING ICON conduit"->str} </div>
      <div className=Styles.header>
        {"A place to share knoledge"->str} <br /> {"Where good ideas find you"->str}
      </div>
      <div className=Styles.image> {"Image"->str} </div>
    </section>
    <section className=Styles.formSection>
      <div className=Styles.box>
        <Title className=Styles.title> "Sign in" </Title>
        <div className=Styles.signup>
          <Text> "Don't have an account?" </Text> {" "->str} <Link to="#"> {"Sign up"->str} </Link>
        </div>
        <form className=Styles.form>
          <InputText placeholder="E-mail" value="" onChange={Js.log} />
          <InputPassword
            className=Styles.formMarginTop placeholder="Password" value="" onChange={Js.log}
          />
          <Button className=Styles.formMarginTop> "Sign in" </Button>
        </form>
        <div className=Styles.skip>
          <Text> "Skip sign-in for now and" </Text>
          {" "->str}
          <Link to="#"> {"start reading"->str} </Link>
        </div>
      </div>
    </section>
  </div>
}

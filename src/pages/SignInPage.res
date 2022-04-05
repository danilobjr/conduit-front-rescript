open JsxUtils

module Style = {
  let pageContainer = "grid grid-cols-2"

  let bannerSection = "relative p-14 bg-gradient-to-b from-gradientFrom to-gradientTo overflow-hidden"
  let slogan = "mt-12 text-white text-5xl font-bold tracking-tighter"
  let slogan2 = "mt-6 text-white text-2xl tracking-tighter opacity-70"
  let bg = "absolute bottom-0 left-0 w-[200%] h-auto min-w-[2430px] max-w-[2880px] opacity-70"

  let formSection = "grid items-center justify-center"
  let formBox = "max-w-sm"
  let title = "text-3xl font-bold"
  let signUp = "mt-2"

  let form = "mt-6"
  let inputEmail = "w-full"
  let inputPassword = "w-full mt-4"
  let button = "w-full mt-4"
  let skip = "mt-6"

  let text = "text-muted"
}

@react.component
let make = () => {
  <div className=Style.pageContainer>
    <section className=Style.bannerSection>
      /* TODO create a Colors module? */
      <Logo color=Logo.White />
      <p className=Style.slogan> {"A place to share"->str} <br /> {"knoledge"->str} </p>
      <p className=Style.slogan2> {"Where good ideas find you"->str} </p>
      <Bg className=Style.bg />
    </section>
    <section className=Style.formSection>
      <div className=Style.formBox>
        <h1 className=Style.title> {"Sign in"->str} </h1>
        <div className=Style.signUp>
          <span className=Style.text> {"Don't have an account?"->str} </span>
          {" "->str}
          <Link to="#"> {"Sign up"->str} </Link>
        </div>
        <form className=Style.form>
          <InputText className=Style.inputEmail placeholder="E-mail" value="" onChange={Js.log} />
          <InputPassword
            className=Style.inputPassword placeholder="Password" value="" onChange={Js.log}
          />
          <Button className=Style.button> "Sign in" </Button>
        </form>
        <div className=Style.skip>
          <span className=Style.text> {"Skip sign-in for now and"->str} </span>
          {" "->str}
          <Link to="#"> {"start reading"->str} </Link>
        </div>
      </div>
    </section>
  </div>
}

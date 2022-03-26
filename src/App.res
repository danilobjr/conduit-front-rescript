Theme.setGlobalStyles()

@react.component
let make = () => {
  let (email, setEmail) = React.useState(() => "")

  let handleEmailChange = JsxUtils.getValue(setEmail)

  <div>
    <InputText placeholder="E-mail" value=email onChange=handleEmailChange />
    <br />
    <Button> "Sign in" </Button>
  </div>
}

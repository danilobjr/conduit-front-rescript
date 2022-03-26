Theme.setGlobalStyles()

@react.component
let make = () => {
  let (email, setEmail) = React.useState(() => "")
  let (password, setPassword) = React.useState(() => "")

  let handleEmailChange = setEmail->JsxUtils.getTargetValue
  let handlePasswordChange = setPassword->JsxUtils.getTargetValue

  <div>
    <InputText placeholder="E-mail" value=email onChange=handleEmailChange />
    <InputPassword placeholder="Password" value=password onChange=handlePasswordChange />
    <br />
    <Button> "Sign in" </Button>
  </div>
}

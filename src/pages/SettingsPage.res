open Typography

module Style = {
  let container = "p-12"
  // TODO this is the same at NewArticlePage
  let card = "mx-auto max-w-2xl p-12 bg-white rounded-md"
  let formRow = "flex gap-6 items-end"
  let profilePicture = "w-[72px] h-[72px]"
}

let tags = ["git", "javascript", "rescript"]

@react.component
let make = () => {
  <Page>
    <div className=Style.container>
      <div className=Style.card>
        <Title> "Your settings" </Title>
        <form>
          <div className=Style.formRow>
            <Form.Control> <img className=Style.profilePicture src="avatar-1.png" /> </Form.Control>
            <Form.Control className="flex-1" label="Profile picture">
              <InputText placeholder="URL of profile picture" value="" onChange=Js.log />
            </Form.Control>
          </div>
          <div className=Style.formRow>
            <Form.Control className="flex-1" label="Username">
              <InputText placeholder="Your unique username" value="" onChange=Js.log />
            </Form.Control>
            <Form.Control className="flex-1" label="Email">
              <InputText placeholder="Your@email.com" value="" onChange=Js.log />
            </Form.Control>
          </div>
          <Form.Control label="Bio">
            <Textarea placeholder="Share bio about you" value="" onChange=Js.log />
          </Form.Control>
          <Form.Control label="Password"> <InputPassword value="" onChange=Js.log /> </Form.Control>
          <Form.Actions> <Button> "Update settings" </Button> </Form.Actions>
        </form>
      </div>
    </div>
  </Page>
}

open Typography

module Style = {
  let container = "p-12"
  let card = "mx-auto max-w-2xl p-12 bg-white rounded-md"
}

let tags = ["git", "javascript", "rescript"]

@react.component
let make = () => {
  <Page>
    <div className=Style.container>
      <div className=Style.card>
        <Title> "New article" </Title>
        <form>
          <Form.Control label="Title">
            <InputText placeholder="Article title" value="" onChange=Js.log />
          </Form.Control>
          <Form.Control label="About">
            <InputText placeholder="What's this article about?" value="" onChange=Js.log />
          </Form.Control>
          <Form.Control>
            <Textarea placeholder="Write your article (in markdown)" value="" onChange=Js.log />
          </Form.Control>
          <Form.Control label="Tags"> <InputTags value=tags /> </Form.Control>
          <Form.Actions> <Button> "Publish article" </Button> </Form.Actions>
        </form>
      </div>
    </div>
  </Page>
}

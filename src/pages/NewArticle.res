open JsxUtils
open Typography

module Style = {
  let container = "p-12"
  let card = "mx-auto max-w-2xl p-12 bg-white rounded-md"
  let formElement = "flex flex-col mt-6"
  let label = "mb-1 font-medium"
  let formActions = "flex justify-end mt-6"
}

let tags = ["git", "javascript", "rescript"]

@react.component
let make = () => {
  <Page>
    <div className=Style.container>
      <div className=Style.card>
        <Title> "New article" </Title>
        <form>
          <div className=Style.formElement>
            <label className=Style.label> {"Title"->s} </label>
            <InputText placeholder="Article title" value="" onChange=Js.log />
          </div>
          <div className=Style.formElement>
            <label className=Style.label> {"About"->s} </label>
            <InputText placeholder="What's this article about?" value="" onChange=Js.log />
          </div>
          <div className=Style.formElement>
            <Textarea placeholder="Write your article (in markdown)" value="" onChange=Js.log />
          </div>
          <div className=Style.formElement>
            <label className=Style.label> {"Tags"->s} </label> <InputTags value=tags />
          </div>
          <div className=Style.formActions> <Button> "Publish article" </Button> </div>
        </form>
      </div>
    </div>
  </Page>
}

open JsxUtils
open Typography

module Style = {
  let container = "p-12"
  let card = "mx-auto max-w-2xl p-12 bg-white rounded-md"
  let formElement = "flex flex-col mt-6"
  let label = "mb-1 font-medium"
  let formActions = "flex justify-end mt-6"
}


// TODO extract to its own file
module InputTags = {
  module Style = {
    let container = "flex flex-wrap gap-2 py-3 px-5 bg-neutral-100 border-zero rounded-md cursor-text"
    let tag = "pb-px px-3 bg-dark rounded-full text-white"
    let input = "min-w-[100px] flex-1 bg-transparent outline-none"
  }

  @react.component
  let make = (~value: array<string>) => {
    <div className=Style.container>
      {
        // TODO create a util for this
        value->Belt.Array.map(t => <span className=Style.tag> {t->s} </span>)->React.array
      }
      <input className=Style.input />
    </div>
  }
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

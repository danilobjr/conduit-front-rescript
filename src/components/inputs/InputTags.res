open JsxUtils

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

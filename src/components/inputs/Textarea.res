let style = "h-[10em] py-3 px-5 bg-neutral-100 border-zero rounded-md resize-none"

@react.component
let make = (~placeholder, ~value, ~onChange) => {
  <textarea className=style placeholder value onChange />
}

type active = Active(bool)
type variant = Normal | MenuItem(active)

let styleClasses = " tracking-tighter no-underline"

@react.component
let make = (~children, ~variant=Normal, ~to) => {
  let classes = switch variant {
  | Normal => "border-b-2 border-b-primary text-primary"
  | MenuItem(Active(true)) => "text-primary"
  | MenuItem(Active(false)) => ""
  }

  <a className=classes href=to> children </a>
}

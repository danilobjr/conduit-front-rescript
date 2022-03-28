open CssJs

module Colors = {
  /* let primary = "477bff" */
  let primary50 = "ebf0ff"
  let primary300 = "5786ff"
  let black = "131128"
  let white = "fff"
  let neutral = "282c3c"
  let neutral200 = "aeb3c9"

  module BlueGradient = {
    let from = (0.0->pct, "477bff"->hex)
    let to = (100.0->pct, "306aff"->hex)
  }
}

module Font = {
  let family = "'DM Sans', sans-serif"->#custom
  let size = 20->px
}

module Radius = {
  let small = 6->px
  let medium = 12->px
  let large = 16->px
}

let setGlobalStyles = () => {
  global(. "html", [fontFamily(Font.family), fontSize(Font.size)])
}

open CssJs

module Colors = {
  let primary = "477bff"
  let white = "fff"
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

open JsxUtils

module Title = {
  @react.component
  let make = (~children, ~className=?) => {
    let style = switch className {
    | Some(s) => CssJs.merge(. [TypographyStyles.title, s])
    | None => TypographyStyles.text
    }

    <h1 className=style> {children->str} </h1>
  }
}

module Text = {
  @react.component
  let make = (~children, ~className=?) => {
    let style = switch className {
    | Some(s) => CssJs.merge(. [TypographyStyles.text, s])
    | None => TypographyStyles.text
    }

    <span className=style> {children->str} </span>
  }
}

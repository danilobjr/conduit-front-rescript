open JsxUtils

module Container = {
  @react.component
  let make = (~children, ~className=?) => {
    <div className={classNames("page-container", className)}> children </div>
  }
}

module Content = {
  @react.component
  let make = (~children, ~className=?) => {
    <div className={classNames("page-content", className)}> children </div>
  }
}

@react.component
let make = (~children, ~className=?) => {
  let wrapperClassName = switch className {
  | Some(c) => c
  | None => ""
  }

  <Container className=wrapperClassName> <TopBar /> <Content> children </Content> </Container>
}

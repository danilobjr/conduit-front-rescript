open JsxUtils

module Wrapper = {
  @react.component
  let make = (~children, ~className=?) => {
    <div className={classNames("page-wrapper", className)}> children </div>
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

  <Wrapper className=wrapperClassName> <TopBar /> <Content> children </Content> </Wrapper>
}

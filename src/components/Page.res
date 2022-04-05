module Style = {
  let container = "grid grid-rows-[auto_1fr] h-full"
  let content = "bg-neutral-50"
}

module Container = {
  @react.component
  let make = (~children) => {
    <div className=Style.container> children </div>
  }
}

module Content = {
  @react.component
  let make = (~children) => {
    <div className=Style.content> children </div>
  }
}

@react.component
let make = (~children) => {
  <Container> <TopBar /> <Content> children </Content> </Container>
}

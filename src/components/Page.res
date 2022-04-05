
module Container = {
  @react.component
  let make = (~children) => {
    <div className="grid grid-rows-[auto_1fr] h-full"> children </div>
  }
}

module Content = {
  @react.component
  let make = (~children) => {
    <div className="bg-neutral-50"> children </div>
  }
}

@react.component
let make = (~children) => {
  <Container> <TopBar /> <Content> children </Content> </Container>
}

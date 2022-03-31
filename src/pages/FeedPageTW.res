open JsxUtils

module Tab = {
  @react.component
  let make = (~children) => {
    <ul className="flex"> children </ul>
  }

  module Item = {
    @react.component
    let make = (~active=false, ~children) => {
      let activeClasses = switch active {
      | true => "text-white font-bold bg-blue-400"
      | false => ""
      }

      Js.log(activeClasses)

      <li className={`py-2 px-4 rounded-lg ${activeClasses}`}> children </li>
    }
  }
}

module Container = {
  @react.component
  let make = (~children) => {
    <div className="grid grid-cols-1 gap-4 container mx-auto py-4"> children </div>
  }
}

module Feed = {
  @react.component
  let make = (~children) => {
    <section className="flex flex-col gap-12 col-span-2"> children </section>
  }
}

module Card = {
  @react.component
  let make = (~children) => {
    <div className="bg-gray-200 rounded-xl"> children </div>
  }

  module Header = {
    @react.component
    let make = (~children) => {
      <div className="flex p-6"> children </div>
    }

    module Title = {
      @react.component
      let make = (~children) => {
        <h4 className="-mt-1 text-2xl font-medium"> children </h4>
      }
    }
  }

  module Body = {
    @react.component
    let make = (~children) => {
      <div className="px-6"> children </div>
    }
  }

  module Footer = {
    @react.component
    let make = (~className=?, ~children) => {
      <div className={classNames("p-6", className)}> children </div>
    }
  }
}

module Article = {
  @react.component
  let make = (~children) => {
    <div> children </div>
  }

  module Header = {
    @react.component
    let make = (~children) => {
      <div className="flex"> children </div>
    }

    module Title = {
      @react.component
      let make = (~children) => {
        <h4 className="-mt-1 text-2xl font-medium"> children </h4>
      }
    }

    module Likes = {
      @react.component
      let make = (~amount) => {
        <div className="flex ml-10">
          <Icon className="fill-gray-400" variant=#favoriteOutline />
          <span className="ml-3"> {amount->Belt.Int.toString->str} </span>
        </div>
      }
    }
  }

  module Body = {
    @react.component
    let make = (~children) => {
      <div className="mt-6"> children </div>
    }
  }

  module Footer = {
    @react.component
    let make = (~postDate, ~userAvatarSrc, ~userName) => {
      <div className="mt-6 flex items-center">
        <img className="mr-4" src=userAvatarSrc />
        <div className="flex flex-col">
          <span className="text-sm font-medium"> {userName->str} </span>
          <span className="text-sm text-gray-400"> {postDate->str} </span>
        </div>
      </div>
    }
  }
}

module Tag = {
  @react.component
  let make = (~children) => {
    <span
      className="py-1 px-3 text-gray-500 rounded-2xl shadow-md cursor-pointer hover:text-inherit hover:shadow-xl">
      children
    </span>
  }
}

@react.component
let make = () => {
  <Page>
    <Container>
      <Tab>
        <Tab.Item active=true> {"Your feed"->str} </Tab.Item>
        <Tab.Item> {"Global feed"->str} </Tab.Item>
      </Tab>
      <div className="grid grid-cols-3 gap-8">
        <Feed>
          <Article>
            <Article.Header>
              <Article.Header.Title>
                {"Node.js & JavaScript Testing Best Practices"->str}
              </Article.Header.Title>
              <Article.Header.Likes amount=234 />
            </Article.Header>
            <Article.Body>
              {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ..."->str}
            </Article.Body>
            <Article.Footer
              postDate="May 4, 2021" userAvatarSrc="avatar-1.png" userName="alexturner"
            />
          </Article>
          <Article>
            <Article.Header>
              <Article.Header.Title>
                {"Node.js & JavaScript Testing Best Practices"->str}
              </Article.Header.Title>
              <Article.Header.Likes amount=234 />
            </Article.Header>
            <Article.Body>
              {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ..."->str}
            </Article.Body>
            <Article.Footer
              postDate="May 4, 2021" userAvatarSrc="avatar-1.png" userName="alexturner"
            />
          </Article>
        </Feed>
        <aside>
          <div className="">
            <h4 className="-mt-1 text-2xl font-medium"> {"Popular tags"->str} </h4>
            <div className="flex flex-wrap mt-6 gap-2">
              <Tag> {"css"->str} </Tag>
              <Tag> {"javascript"->str} </Tag>
              <Tag> {"java"->str} </Tag>
              <Tag> {"html"->str} </Tag>
              <Tag> {"rescript"->str} </Tag>
              <Tag> {"react"->str} </Tag>
              <Tag> {"react native"->str} </Tag>
              <Tag> {"flutter"->str} </Tag>
              <Tag> {"git"->str} </Tag>
              <Tag> {"nodejs"->str} </Tag>
              <Tag> {"github"->str} </Tag>
              <Tag> {"design"->str} </Tag>
              <Tag> {"ui design"->str} </Tag>
              <Tag> {"ux design"->str} </Tag>
              <Tag> {"devops"->str} </Tag>
            </div>
          </div>
        </aside>
      </div>
    </Container>
  </Page>
}

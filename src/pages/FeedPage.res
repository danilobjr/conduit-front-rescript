open JsxUtils

module Style = {
  let container = "grid grid-cols-1 gap-4 container mx-auto p-8"
  let feed = "flex flex-col gap-12 col-span-2"
}

@react.component
let make = () => {
  <Page>
    <div className=Style.container>
      <Tab>
        <Tab.Item active=true> {"Your feed"->s} </Tab.Item>
        <Tab.Item> {"Global feed"->s} </Tab.Item>
      </Tab>
      <div className="grid grid-cols-3 gap-8">
        <div className=Style.feed>
          <Article>
            <Article.Header>
              <Article.Header.Title>
                {"Node.js & JavaScript Testing Best Practices"->s}
              </Article.Header.Title>
              <Article.Header.Likes amount=234 />
            </Article.Header>
            <Article.Body>
              {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ..."->s}
            </Article.Body>
            <Article.Footer
              postDate="May 4, 2021" userAvatarSrc="avatar-1.png" userName="alexturner"
            />
          </Article>
          <Article>
            <Article.Header>
              <Article.Header.Title>
                {"Node.js & JavaScript Testing Best Practices"->s}
              </Article.Header.Title>
              <Article.Header.Likes amount=234 />
            </Article.Header>
            <Article.Body>
              {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ..."->s}
            </Article.Body>
            <Article.Footer
              postDate="May 4, 2021" userAvatarSrc="avatar-1.png" userName="alexturner"
            />
          </Article>
        </div>
        <aside>
          <div className="">
            <h4 className="-mt-1 text-2xl font-medium"> {"Popular tags"->s} </h4>
            <div className="flex flex-wrap mt-6 gap-2">
              <Tag> {"css"->s} </Tag>
              <Tag> {"javascript"->s} </Tag>
              <Tag> {"java"->s} </Tag>
              <Tag> {"html"->s} </Tag>
              <Tag> {"rescript"->s} </Tag>
              <Tag> {"react"->s} </Tag>
              <Tag> {"react native"->s} </Tag>
              <Tag> {"flutter"->s} </Tag>
              <Tag> {"git"->s} </Tag>
              <Tag> {"nodejs"->s} </Tag>
              <Tag> {"github"->s} </Tag>
              <Tag> {"design"->s} </Tag>
              <Tag> {"ui design"->s} </Tag>
              <Tag> {"ux design"->s} </Tag>
              <Tag> {"devops"->s} </Tag>
            </div>
          </div>
        </aside>
      </div>
    </div>
  </Page>
}

open JsxUtils

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
        <Icon className="fill-gray-400" variant=Icon.FavoriteOutline />
        <span className="ml-3"> {amount->Belt.Int.toString->s} </span>
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
        <span className="text-sm font-medium"> {userName->s} </span>
        <span className="text-sm text-gray-400"> {postDate->s} </span>
      </div>
    </div>
  }
}

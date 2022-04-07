@react.component
let make = (~children) => {
  <span
    className="py-1 px-3 text-gray-500 rounded-2xl shadow-md cursor-pointer hover:text-inherit hover:shadow-xl">
    children
  </span>
}
